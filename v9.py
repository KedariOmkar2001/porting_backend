import numpy as np
from fastapi import FastAPI, UploadFile, File, Form, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
import pandas as pd
import math
from datetime import datetime
from typing import List, Optional, Dict, Any
import io
import os
from pydantic import BaseModel
from cryptography.fernet import Fernet
import base64
import hashlib
from Crypto.Cipher import AES
import base64
import zipfile

app = FastAPI(title="Excel to SQL Generator")

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


class GenerationConfig(BaseModel):
    tenant_id: int = 1
    operated_by_uid: int = 1
    starting_uid: int = 1000
    encryption_key: str = "JZhqElopWrbkAisF"
    default_password: str = "$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya"
    role_id: int = 532193206  # Default role ID
    starting_employee_id: int = 1000  # Starting employee_id
    starting_user_role_id: int = 444303467162447  # Starting user_role_id


class ValidationResult(BaseModel):
    is_valid: bool
    errors: List[Dict[str, Any]]
    warnings: List[Dict[str, Any]]
    summary: Dict[str, Any]


# ============ ENCRYPTION FUNCTIONS ============

def pad(data: bytes) -> bytes:
    padding_length = 16 - (len(data) % 16)
    return data + bytes([padding_length]) * padding_length


def encrypt_aes_ecb_pkcs5(text: str, key: str) -> str:
    if text is None:
        return None  # <-- safely handle None
    key_bytes = key.encode("utf-8")
    cipher = AES.new(key_bytes, AES.MODE_ECB)

    padded = pad(text.encode("utf-8"))
    encrypted = cipher.encrypt(padded)

    return base64.b64encode(encrypted).decode("utf-8")


def unpad(data: bytes) -> bytes:
    padding_len = data[-1]
    return data[:-padding_len]


def decrypt_aes_ecb_pkcs5(ciphertext: str, key: str) -> str:
    key_bytes = key.encode("utf-8")
    cipher = AES.new(key_bytes, AES.MODE_ECB)

    decoded_data = base64.b64decode(ciphertext)
    decrypted = cipher.decrypt(decoded_data)

    return unpad(decrypted).decode("utf-8")


def get_encryption_key(secret_key: str):
    """Generate a Fernet key from your secret"""
    # Use SHA256 to create a 32-byte key
    key = hashlib.sha256(secret_key.encode()).digest()
    # Fernet needs base64 encoded key
    return base64.urlsafe_b64encode(key)


def encrypt_aes(plain_text: str, secret_key: str) -> str:
    """Encrypt text using AES (via Fernet)"""
    if not plain_text or pd.isna(plain_text) or str(plain_text).lower() == 'nan':
        return None

    try:
        key = get_encryption_key(secret_key)
        fernet = Fernet(key)
        encrypted = fernet.encrypt(str(plain_text).encode())
        return encrypted.decode()
    except:
        return None


def hash_password(password: str) -> str:
    """Hash password using SHA256"""
    return hashlib.sha256(password.encode()).hexdigest()


# EXACT COPY from CMD code - sql_val helper function
def sql_val(val, is_int=False, is_bool=False):
    if val is None or (isinstance(val, float) and math.isnan(val)) or str(val).lower() == 'nan':
        return "NULL"
    if is_int:
        return str(int(float(val))) if '.' in str(val) else str(val)
    if is_bool:
        return "true" if str(val).strip().lower() in ('1', 'true', 'y', 'yes') else "false"
    if isinstance(val, (datetime,)):
        return f"'{val.date()}'"  # only date part
    return f"'{str(val).replace(chr(39), chr(39) + chr(39)).strip()}'"


# FIXED: Strip and lowercase for comparison
def get_designation_id_from_designation_name(designation_name, designations_table):
    # Handle None or NaN
    if designation_name is None or pd.isna(designation_name):
        return None

    # Strip and normalize the input designation name
    designation_name_cleaned = str(designation_name).strip().upper()

    # Special case handling - normalize both variations
    if designation_name_cleaned == 'DIVISIONAL ACCOUNTANT OFFICER':
        designation_name_cleaned = "DIVISIONAL ACCOUNTS OFFICER"

    # Normalize the designation_name column in the table for comparison
    designations_table_normalized = designations_table.copy()
    designations_table_normalized['designation_name_normalized'] = (
        designations_table_normalized['designation_name']
        .astype(str)
        .str.strip()
        .str.upper()
    )

    # Apply same special case to table
    designations_table_normalized['designation_name_normalized'] = (
        designations_table_normalized['designation_name_normalized']
        .replace('DIVISIONAL ACCOUNTANT OFFICER', 'DIVISIONAL ACCOUNTS OFFICER')
    )

    result = designations_table_normalized.loc[
        designations_table_normalized['designation_name_normalized'] == designation_name_cleaned,
        'designation_id'
    ]

    return result.iloc[0] if not result.empty else None


# FIXED: Already good, but added strip to be consistent
def get_role_id_of_user_from_umsm_role_table(designation_name: str, umsm_role_table) -> int | None:
    """
    Matches designation from Excel (e.g. "Executive Engineer")
    against role_name in umsm_role table which can be:
      • "Executive Engineer"
      • "EE - Executive Engineer"
      • "EE-Executive Engineer"
      • "ee - executive engineer"
      • etc.
    """
    if not designation_name or pd.isna(designation_name):
        return None

    # Clean the input from Excel
    target = str(designation_name).strip().lower()

    # Clean all role names once
    role_names = umsm_role_table['role_name'].astype(str).str.strip().str.lower()

    # Method 1: Exact match (if someone already uses clean name)
    if target in role_names.values:
        idx = role_names[role_names == target].index[0]
        return int(umsm_role_table.loc[idx, 'role_id'])

    # Method 2: Match text AFTER " - " or "-"
    # "ee - executive engineer" → "executive engineer"
    # "dao-divisional accounts officer" → "divisional accounts officer"
    cleaned_roles = role_names.str.split(r'[\-\–\—]\s*', n=1).str[-1].str.strip()
    # The above handles: -, –, — (different dash types)

    match_after_dash = (cleaned_roles == target)
    if match_after_dash.any():
        idx = match_after_dash.idxmax()  # first match
        return int(umsm_role_table.loc[idx, 'role_id'])

    # Method 3: Match text BEFORE dash if it's short code like "EE", "AE", "JE"
    # Useful if Excel accidentally has only "EE"
    codes = role_names.str.split(r'[\-\–\—]\s*', n=1).str[0].str.strip()
    if len(target) <= 4 and target.upper() in codes.str.upper().values:
        idx = codes[codes.str.upper() == target.upper()].index[0]
        return int(umsm_role_table.loc[idx, 'role_id'])

    # Nothing found
    return None

# FIXED: Strip and lowercase for comparison
def get_office_id_from_office_name(office_name, offices_table):
    # Handle None or NaN
    if office_name is None or pd.isna(office_name):
        return None

    # Strip and normalize the input office name
    office_name_cleaned = str(office_name).strip().lower()

    # Normalize the office_name column in the table for comparison
    offices_table_normalized = offices_table.copy()
    offices_table_normalized['office_name_normalized'] = (
        offices_table_normalized['office_name']
        .astype(str)
        .str.strip()
        .str.lower()
    )

    result = offices_table_normalized.loc[
        offices_table_normalized['office_name_normalized'] == office_name_cleaned,
        'office_id'
    ]

    return result.iloc[0] if not result.empty else None


def clean_dataframe(df: pd.DataFrame) -> pd.DataFrame:
    """
    Clean dataframe but preserve optional columns even if they're empty
    """
    # List of optional columns to ALWAYS keep (even if empty)
    optional_columns_to_preserve = [
        ('Middle Name\n(Special characters not allowed except space)', 'Unnamed: 3_level_1'),
        ('Last Name\n(Special characters not allowed except space)', 'Unnamed: 4_level_1'),
        ('Date of Relieving/Termination\n(dd-mmm-yyyy)', 'Unnamed: 7_level_1'),
        ('Incumbency Details', 'Period Till\n(dd-mmm-yyyy)'),
        ('Company/Organisation', 'Unnamed: 15_level_1'),
        ('Email', 'Unnamed: 16_level_1'),
        ('Contact No.', 'Unnamed: 17_level_1'),
    ]

    # Step 1: Remove completely empty ROWS
    df = df.dropna(how='all')

    # Step 2: Find columns that are completely empty
    empty_cols = df.columns[df.isna().all()].tolist()

    # Step 3: Remove empty columns EXCEPT the ones we want to preserve
    cols_to_drop = [
        col for col in empty_cols
        if col not in optional_columns_to_preserve
    ]

    if cols_to_drop:
        df = df.drop(columns=cols_to_drop)

    # Step 4: Replace blank spaces with NA
    df = df.replace(r'^\s*$', pd.NA, regex=True)

    # Step 5: Remove completely empty rows again (after blank space cleanup)
    df = df.dropna(how='all')

    return df.reset_index(drop=True)

def validate_employee_data(employees_df, designations_df, offices_df, original_df) -> ValidationResult:
    """Validate employee data before SQL generation - INFO ONLY, doesn't block"""
    errors = []
    warnings = []

    # Define required columns (multi-level headers)
    required_columns = {
        ('Employee Number*\n(Manav Sampada\nHRMS ID)', 'Unnamed: 0_level_1'): "Employee Number",
        ('Title*', 'Unnamed: 1_level_1'): "Title",
        ('First Name*\n(Special characters not allowed except space)', 'Unnamed: 2_level_1'): "First Name",
        ('Full Name*\n(Special characters not allowed except space)', 'Unnamed: 5_level_1'): "Full Name",
        ('Date of Joining (in Deptt. Contratual/ Regular)*\n(dd-mmm-yyyy)', 'Unnamed: 6_level_1'): "Date of Joining",
        ('Incumbency Details', 'Designation*'): "Designation",
        ('Incumbency Details', 'Period From (at presnet office)*\n(dd-mmm-yyyy)'): "Period From"
    }

    # Check if required columns exist
    missing_columns = []
    for col_tuple, col_name in required_columns.items():
        if col_tuple not in employees_df.columns:
            missing_columns.append(col_name)

    if missing_columns:
        errors.append({
            "type": "MISSING_COLUMNS",
            "sheet": "Employee Details",
            "columns": missing_columns,
            "message": f"Required columns missing: {', '.join(missing_columns)}"
        })
        return ValidationResult(
            is_valid=False,
            errors=errors,
            warnings=warnings,
            summary={"total_rows": len(original_df), "valid_rows": len(employees_df)}
        )

    # Get available office names and designation names for better error messages
    available_offices = set()
    if 'office_name' in offices_df.columns:
        available_offices = set(offices_df['office_name'].astype(str).str.strip().str.lower().dropna().tolist())

    available_designations = set()
    if 'designation_name' in designations_df.columns:
        available_designations = set(
            designations_df['designation_name'].astype(str).str.strip().str.upper().dropna().tolist())

    # Validate each row
    for idx, (orig_idx, row) in enumerate(employees_df.iterrows()):
        # Excel row = original index + 3 (1 for 0-based, 2 for header rows)
        excel_row = orig_idx + 3

        # Check Employee Number
        employee_number = row[('Employee Number*\n(Manav Sampada\nHRMS ID)', 'Unnamed: 0_level_1')]
        if pd.isna(employee_number):
            errors.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Employee Number",
                "message": f"Excel Row {excel_row}: Employee Number is missing"
            })

        # Check Full Name
        full_name = row[('Full Name*\n(Special characters not allowed except space)', 'Unnamed: 5_level_1')]
        if pd.isna(full_name):
            errors.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Full Name",
                "message": f"Excel Row {excel_row}: Full Name is missing"
            })

        # Check Designation
        designation = row[('Incumbency Details', 'Designation*')]
        if pd.isna(designation):
            errors.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Designation",
                "message": f"Excel Row {excel_row}: Designation is missing"
            })
        else:
            # Strip and check if designation exists in master data
            designation_stripped = str(designation).strip()
            designation_id = get_designation_id_from_designation_name(designation_stripped, designations_df)
            if designation_id is None:
                errors.append({
                    "type": "INVALID_REFERENCE",
                    "row": excel_row,
                    "column": "Designation",
                    "value": designation_stripped,
                    "message": f"Excel Row {excel_row}: Designation '{designation_stripped}' not found in master data"
                })

            # Check if office can be determined
            office_name = get_office_of_user_by_designation(row)
            if office_name is None:
                warnings.append({
                    "type": "MISSING_MAPPING",
                    "row": excel_row,
                    "column": "Office",
                    "message": f"Excel Row {excel_row}: No office mapping defined for designation '{designation_stripped}'"
                })
            elif pd.isna(office_name):
                errors.append({
                    "type": "MISSING_VALUE",
                    "row": excel_row,
                    "column": "Office Name",
                    "message": f"Excel Row {excel_row}: Office name is missing for designation '{designation_stripped}'"
                })
            else:
                # Strip and check if office exists in master data
                office_name_stripped = str(office_name).strip()
                office_id = get_office_id_from_office_name(office_name_stripped, offices_df)
                if office_id is None:
                    # Find closest matches for better error messages
                    closest_matches = []
                    office_name_check = office_name_stripped.lower()
                    for avail_office in available_offices:
                        if office_name_check == avail_office:
                            closest_matches.append(avail_office)

                    error_msg = f"Excel Row {excel_row}: Office '{office_name_stripped}' not found in master data"
                    if closest_matches:
                        error_msg += f" (Case/space mismatch? Found similar: '{closest_matches[0]}')"

                    errors.append({
                        "type": "INVALID_REFERENCE",
                        "row": excel_row,
                        "column": "Office Name",
                        "value": office_name_stripped,
                        "message": error_msg,
                        "suggested_match": closest_matches[0] if closest_matches else None
                    })

        # Check Date of Joining (warning only)
        date_of_joining = row[('Date of Joining (in Deptt. Contratual/ Regular)*\n(dd-mmm-yyyy)', 'Unnamed: 6_level_1')]
        if pd.isna(date_of_joining):
            warnings.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Date of Joining",
                "message": f"Excel Row {excel_row}: Date of Joining is missing (will be NULL)"
            })

        # Check Period From (warning only)
        period_from = row[('Incumbency Details', 'Period From (at presnet office)*\n(dd-mmm-yyyy)')]
        if pd.isna(period_from):
            warnings.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Period From",
                "message": f"Excel Row {excel_row}: Period From is missing (will be NULL)"
            })

        # Check Email (warning only)
        email = row[('Email', 'Unnamed: 16_level_1')]
        if pd.isna(email):
            warnings.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Email",
                "message": f"Excel Row {excel_row}: Email is missing (will be NULL)"
            })

    # Count rows that will be skipped
    skipped_rows = len(original_df) - len(employees_df)

    summary = {
        "total_rows": len(original_df),
        "valid_rows": len(employees_df),
        "skipped_rows": skipped_rows,
        "error_count": len(errors),
        "warning_count": len(warnings),
        "critical_errors": len([e for e in errors if e["type"] in ["MISSING_VALUE", "INVALID_REFERENCE"]])
    }

    # Validation passes if no CRITICAL errors (missing columns or structure issues)
    is_valid = len(missing_columns) == 0

    return ValidationResult(
        is_valid=is_valid,
        errors=errors,
        warnings=warnings,
        summary=summary
    )


def validate_master_data(designations_df, offices_df) -> Dict[str, Any]:
    """Validate master data sheets"""
    validation_errors = []
    warnings = []

    # Check designations sheet
    if 'designation_name' not in designations_df.columns:
        validation_errors.append({
            "type": "MISSING_COLUMN",
            "sheet": "gblm_designation",
            "column": "designation_name",
            "message": "Required column 'designation_name' not found in designations sheet"
        })

    if 'designation_id' not in designations_df.columns:
        validation_errors.append({
            "type": "MISSING_COLUMN",
            "sheet": "gblm_designation",
            "column": "designation_id",
            "message": "Required column 'designation_id' not found in designations sheet"
        })

    # Check for empty designations
    if 'designation_name' in designations_df.columns:
        empty_designations = designations_df['designation_name'].isna().sum()
        if empty_designations > 0:
            warnings.append({
                "type": "EMPTY_VALUES",
                "sheet": "gblm_designation",
                "column": "designation_name",
                "count": int(empty_designations),
                "message": f"{empty_designations} empty designation names found"
            })

    # Check offices sheet
    if 'office_name' not in offices_df.columns:
        validation_errors.append({
            "type": "MISSING_COLUMN",
            "sheet": "gblm_office",
            "column": "office_name",
            "message": "Required column 'office_name' not found in offices sheet"
        })

    if 'office_id' not in offices_df.columns:
        validation_errors.append({
            "type": "MISSING_COLUMN",
            "sheet": "gblm_office",
            "column": "office_id",
            "message": "Required column 'office_id' not found in offices sheet"
        })

    # Check for empty offices
    if 'office_name' in offices_df.columns:
        empty_offices = offices_df['office_name'].isna().sum()
        if empty_offices > 0:
            warnings.append({
                "type": "EMPTY_VALUES",
                "sheet": "gblm_office",
                "column": "office_name",
                "count": int(empty_offices),
                "message": f"{empty_offices} empty office names found"
            })

    return {
        "errors": validation_errors,
        "warnings": warnings,
        "designation_count": len(designations_df),
        "office_count": len(offices_df)
    }


# FIXED: Strip and lowercase for comparison, strip after splitting
def get_office_of_user_by_designation(row):
    designation_mapping_to_row = {
        "divisional accountant officer": ('Incumbency Details', 'Division Office Name*'),
        "junior engineer": ('Incumbency Details', 'Section Office Name*'),
        "auditor": ('Incumbency Details', 'Division Office Name*'),
        "assistant engineer": ('Incumbency Details', 'Sub-division Office Name*'),
        "junior draughtsman": ('Incumbency Details', 'Division Office Name*'),
        "tender assistant": ('Incumbency Details', 'Division Office Name*'),
        "divisional accounts officer": ('Incumbency Details', 'Division Office Name*'),
        "executive engineer": ('Incumbency Details', 'Division Office Name*'),
        "EE - EXECUTIVE ENGINEER": ('Incumbency Details', 'Division Office Name*'),
        "others":('Incumbency Details', 'Division Office Name*'),
        "auditor": ('Incumbency Details', 'Division Office Name*'),
        "JUNIOR DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
        "tender assitant": ('Incumbency Details', 'Division Office Name*'),
        "data entry operator": ('Incumbency Details', 'Division Office Name*'),
        "SUPERINTENDENT": ('Incumbency Details', 'Division Office Name*'),
        "DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
        "HEAD DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
    }

    designation_name_raw = row[('Incumbency Details', 'Designation*')]

    # Handle None or NaN
    if designation_name_raw is None or pd.isna(designation_name_raw):
        return None

    # Strip and lowercase for lookup
    designation_name = str(designation_name_raw).strip().lower()
    office_column = designation_mapping_to_row.get(designation_name)

    if office_column is None:
        return None

    office_name_raw = row[office_column]

    # Handle None or NaN
    if office_name_raw is None or pd.isna(office_name_raw):
        return None

    office_name = str(office_name_raw).strip()

    # If it's Section Office column → extract only first part before ' - ' or '-'
    if isinstance(office_column, tuple) and office_column[1].strip() == 'Section Office Name*':
        if ' - ' in office_name:
            office_name = office_name.split(' - ', 1)[0].strip()
        elif '-' in office_name:
            office_name = office_name.split('-', 1)[0].strip()

    return office_name


def generate_queries(designations_df, offices_df, employees_df, config: GenerationConfig, user_role_df):
    """Generate SQL INSERT queries from DataFrames - Returns TWO separate SQL strings"""

    # Filter out rows with null designations
    employees_df = employees_df[
        employees_df[('Incumbency Details', 'Designation*')].notna()
    ].copy()

    wamis_queries = []
    um_queries = []
    errors = []
    success_count = 0

    CURRENT_TIMESTAMP = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    # Initialize WAMIS file
    wamis_queries.append("-- WAMIS DATABASE - SQL Insert Queries")
    wamis_queries.append(f"-- Generated on: {CURRENT_TIMESTAMP}")
    wamis_queries.append("-- Tables: wamis.amsm_employee, wamis.amsm_employee_service")
    wamis_queries.append("-- " + "=" * 80)
    wamis_queries.append("BEGIN;")
    wamis_queries.append("")

    # Initialize UM file
    um_queries.append("-- UM DATABASE - SQL Insert Queries")
    um_queries.append(f"-- Generated on: {CURRENT_TIMESTAMP}")
    um_queries.append("-- Tables: um.umsm_user, um.umst_user_role")
    um_queries.append("-- " + "=" * 80)
    um_queries.append("BEGIN;")
    um_queries.append("")

    for index, row in employees_df.iterrows():
        try:
            # Extract employee data and STRIP all values
            employee_number_raw = row[('Employee Number*\n(Manav Sampada\nHRMS ID)', 'Unnamed: 0_level_1')]
            employee_number = str(employee_number_raw).strip() if pd.notna(employee_number_raw) else None

            title_raw = row[('Title*', 'Unnamed: 1_level_1')]
            title = str(title_raw).strip() if pd.notna(title_raw) else None

            first_name_raw = row[('First Name*\n(Special characters not allowed except space)', 'Unnamed: 2_level_1')]
            first_name = str(first_name_raw).strip() if pd.notna(first_name_raw) else None

            middle_name_raw = row[('Middle Name\n(Special characters not allowed except space)', 'Unnamed: 3_level_1')]
            middle_name = str(middle_name_raw).strip() if pd.notna(middle_name_raw) else None

            last_name_raw = row[('Last Name\n(Special characters not allowed except space)', 'Unnamed: 4_level_1')]
            last_name = str(last_name_raw).strip() if pd.notna(last_name_raw) else None

            full_name_raw = row[('Full Name*\n(Special characters not allowed except space)', 'Unnamed: 5_level_1')]
            full_name = str(full_name_raw).strip() if pd.notna(full_name_raw) else None

            date_of_joining = row[
                ('Date of Joining (in Deptt. Contratual/ Regular)*\n(dd-mmm-yyyy)', 'Unnamed: 6_level_1')]
            date_of_relieving = row[('Date of Relieving/Termination\n(dd-mmm-yyyy)', 'Unnamed: 7_level_1')]

            designation_raw = row[('Incumbency Details', 'Designation*')]
            designation = str(designation_raw).strip() if pd.notna(designation_raw) else None

            period_from = row[('Incumbency Details', 'Period From (at presnet office)*\n(dd-mmm-yyyy)')]
            period_till = row[('Incumbency Details', 'Period Till\n(dd-mmm-yyyy)')]

            company_organization_raw = row[('Company/Organisation', 'Unnamed: 15_level_1')]
            company_organization = str(company_organization_raw).strip() if pd.notna(company_organization_raw) else None

            email_raw = row[('Email', 'Unnamed: 16_level_1')]
            email = str(email_raw).strip() if pd.notna(email_raw) else None

            contact_no_raw = row[('Contact No.', 'Unnamed: 17_level_1')]
            contact_no = str(contact_no_raw).strip() if pd.notna(contact_no_raw) else None

            # Get IDs using the fixed lookup functions
            designation_id = get_designation_id_from_designation_name(designation, designations_df)
            office_name_raw = get_office_of_user_by_designation(row)
            office_name = str(office_name_raw).strip() if office_name_raw and pd.notna(office_name_raw) else None
            office_id = get_office_id_from_office_name(office_name, offices_df)

            uid = config.starting_uid + success_count
            employee_id = config.starting_employee_id + success_count
            user_role_id = config.starting_user_role_id + success_count
            user_role_id_from_role_name = get_role_id_of_user_from_umsm_role_table(designation, user_role_df)

            # ============ ENCRYPT SENSITIVE DATA ============
            encrypted_email = encrypt_aes_ecb_pkcs5(email, config.encryption_key)
            encrypted_phone = encrypt_aes_ecb_pkcs5(contact_no, config.encryption_key)
            hashed_password = config.default_password

            email_value = f"'{encrypted_email}'" if encrypted_email else "NULL"
            phone_value = f"'{encrypted_phone}'" if encrypted_phone else "NULL"

            # ============ EXCEL DATA PREVIEW (Same for both files) ============
            excel_preview = []
            excel_preview.append("--" * 80)
            excel_preview.append(f"-- RECORD #{success_count + 1} - EXCEL DATA PREVIEW")
            excel_preview.append("--" * 80)
            excel_preview.append("")
            excel_preview.append("-- BASIC INFORMATION FROM EXCEL:")
            excel_preview.append(
                f"--   Employee Number       : {sql_val(employee_number, is_int=True) if employee_number else 'N/A'}")
            excel_preview.append(f"--   Title                 : {title if title else 'N/A'}")
            excel_preview.append(f"--   First Name            : {first_name if first_name else 'N/A'}")
            excel_preview.append(f"--   Middle Name           : {middle_name if middle_name else 'N/A'}")
            excel_preview.append(f"--   Last Name             : {last_name if last_name else 'N/A'}")
            excel_preview.append(f"--   Full Name             : {full_name if full_name else 'N/A'}")
            excel_preview.append("")
            excel_preview.append("-- DESIGNATION & OFFICE FROM EXCEL:")
            excel_preview.append(f"--   Designation           : {designation if designation else 'N/A'}")
            excel_preview.append(f"--   Office Name           : {office_name if office_name else 'N/A'}")
            excel_preview.append("")
            excel_preview.append("-- DATES FROM EXCEL:")
            excel_preview.append(f"--   Date of Joining       : {date_of_joining if pd.notna(date_of_joining) else 'N/A'}")
            excel_preview.append(
                f"--   Date of Relieving     : {date_of_relieving if pd.notna(date_of_relieving) else 'N/A'}")
            excel_preview.append(f"--   Period From           : {period_from if pd.notna(period_from) else 'N/A'}")
            excel_preview.append(f"--   Period Till           : {period_till if pd.notna(period_till) else 'N/A'}")
            excel_preview.append("")
            excel_preview.append("-- CONTACT INFORMATION FROM EXCEL:")
            excel_preview.append(f"--   Email                 : {email if email else 'N/A'}")
            excel_preview.append(f"--   Contact Number        : {sql_val(contact_no, is_int=True) if contact_no else 'N/A'}")
            excel_preview.append(f"--   Company/Organization  : {company_organization if company_organization else 'N/A'}")
            excel_preview.append("")
            excel_preview.append("-- MAPPED/RESOLVED IDs:")
            excel_preview.append(f"--   Designation ID        : {designation_id if designation_id else 'NOT FOUND'}")
            excel_preview.append(f"--   Office ID             : {office_id if office_id else 'NOT FOUND'}")
            excel_preview.append(
                f"--   Role ID               : {user_role_id_from_role_name if user_role_id_from_role_name else 'NOT FOUND'}")
            excel_preview.append("")
            excel_preview.append("-- GENERATED IDs (Auto-incrementing):")
            excel_preview.append(f"--   Employee ID           : {employee_id}")
            excel_preview.append(f"--   UID                   : {uid}")
            excel_preview.append(f"--   User Role ID          : {user_role_id}")
            excel_preview.append("")
            excel_preview.append("-- SECURITY:")
            excel_preview.append(f"--   Email Encrypted       : {'YES' if encrypted_email else 'NO'}")
            excel_preview.append(f"--   Phone Encrypted       : {'YES' if encrypted_phone else 'NO'}")
            excel_preview.append(f"--   Password (Hashed)     : {hashed_password[:20]}... (SHA256)")
            excel_preview.append("")
            excel_preview.append("--" * 80)
            excel_preview.append("")

            # ============ WAMIS QUERIES ============
            wamis_queries.extend(excel_preview)

            # Query 1: wamis.amsm_employee
            employee_query = f"""INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    {employee_id},
    '{int(float(employee_number)) if employee_number and employee_number.replace('.', '').isdigit() else 0}',
    {sql_val(title)},
    {sql_val(first_name)},
    {sql_val(middle_name)},
    {sql_val(last_name)},
    {sql_val(full_name)},
    {sql_val(office_id, is_int=True)},
    'Y', {config.operated_by_uid}, NOW(), {config.tenant_id},
    'A',
    {sql_val(date_of_joining)},
    {sql_val(date_of_relieving)},
    'N',
    true
);"""

            # Query 2: wamis.amsm_employee_service
            service_query = f"""INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    {sql_val(office_id, is_int=True)},
    {employee_id},
    {sql_val(designation_id, is_int=True)},
    'N',
    {sql_val(period_from)},
    {sql_val(period_till)},
    {config.operated_by_uid}, NOW(), {config.tenant_id},
    'Y', 'A', 'A', true
);"""

            wamis_queries.append("-- SQL Queries for WAMIS Database")
            wamis_queries.append("-- [1/2] wamis.amsm_employee")
            wamis_queries.append(employee_query)
            wamis_queries.append("")
            wamis_queries.append("-- [2/2] wamis.amsm_employee_service")
            wamis_queries.append(service_query)
            wamis_queries.append("")
            wamis_queries.append("-- " + "-" * 70)
            wamis_queries.append("")

            # ============ UM QUERIES ============
            um_queries.extend(excel_preview)

            # Query 3: um.umsm_user
            user_query = f"""INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    {uid}, 
    '{int(float(employee_number)) if employee_number and employee_number.replace('.', '').isdigit() else 0}', 
    {email_value}, 
    {phone_value}, 
    '{hashed_password}',
    '',
    'A', 'N', 'N',
    NOW(), {sql_val(period_till)},
    NOW(), {config.operated_by_uid}, NULL,
    {sql_val(full_name)},
    {sql_val(designation)},
    {sql_val(company_organization)},
    {config.tenant_id},
    {sql_val(designation_id, is_int=True)},
    {employee_id},
    true
);"""

            # Query 4: um.umst_user_role
            user_role_query = f"""INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    {user_role_id}, 
    {uid}, 
    {user_role_id_from_role_name}, 
    {sql_val(office_id, is_int=True)}, 
    NOW(), 
    {config.operated_by_uid}, 
    {config.tenant_id}, 
    true
);"""

            um_queries.append("-- SQL Queries for UM Database")
            um_queries.append("-- [1/2] um.umsm_user")
            um_queries.append(user_query)
            um_queries.append("")
            um_queries.append("-- [2/2] um.umst_user_role")
            um_queries.append(user_role_query)
            um_queries.append("")
            um_queries.append("-- " + "-" * 70)
            um_queries.append("")

            success_count += 1

        except Exception as e:
            errors.append(f"Row {index + 1}: {str(e)}")

    # Finalize WAMIS file
    wamis_queries.append("COMMIT;")
    wamis_queries.append("")
    wamis_queries.append(f"-- Total records processed: {success_count}")
    wamis_queries.append(f"-- Total errors: {len(errors)}")

    # Finalize UM file
    um_queries.append("COMMIT;")
    um_queries.append("")
    um_queries.append(f"-- Total records processed: {success_count}")
    um_queries.append(f"-- Total errors: {len(errors)}")

    return "\n".join(wamis_queries), "\n".join(um_queries), errors, success_count


@app.post("/generate-sql")
async def generate_sql(
        master_data: UploadFile = File(...),
        employee_data: UploadFile = File(...),
        tenant_id: int = Form(1),
        operated_by_uid: int = Form(1),
        starting_uid: int = Form(1000),
        starting_employee_id: int = Form(1000),
        starting_user_role_id: int = Form(444303467162447),
        role_id: int = Form(532193206),
        encryption_key: str = Form("JZhqElopWrbkAisF"),
        default_password: str = Form("$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya")
):
    """
    Generate TWO separate SQL files from uploaded Excel files:
    1. WAMIS Database queries (amsm_employee, amsm_employee_service)
    2. UM Database queries (umsm_user, umst_user_role)
    """
    try:
        # Read master data file
        master_content = await master_data.read()
        designations_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_designation')
        offices_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_office')
        user_role_df = pd.read_excel(io.BytesIO(master_content), sheet_name='umsm_role')

        # Read employee data file
        employee_content = await employee_data.read()
        employees_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])

        # Generate configuration
        config = GenerationConfig(
            tenant_id=tenant_id,
            operated_by_uid=operated_by_uid,
            starting_uid=starting_uid,
            starting_employee_id=starting_employee_id,
            starting_user_role_id=starting_user_role_id,
            role_id=role_id,
            encryption_key=encryption_key,
            default_password=default_password
        )

        # Generate queries - NOW RETURNS TWO SQL STRINGS
        wamis_sql, um_sql, errors, success_count = generate_queries(
            designations_df,
            offices_df,
            employees_df,
            config,
            user_role_df
        )

        # Generate timestamped filenames
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        wamis_filename = f"wamis_queries_{timestamp}.sql"
        um_filename = f"um_queries_{timestamp}.sql"

        # Save WAMIS file
        wamis_path = os.path.abspath(wamis_filename)
        with open(wamis_path, 'w', encoding='utf-8') as f:
            f.write(wamis_sql)

        # Save UM file
        um_path = os.path.abspath(um_filename)
        with open(um_path, 'w', encoding='utf-8') as f:
            f.write(um_sql)

        print(f"✓ WAMIS SQL file saved to: {wamis_path}")
        print(f"✓ WAMIS file size: {os.path.getsize(wamis_path)} bytes")
        print(f"✓ UM SQL file saved to: {um_path}")
        print(f"✓ UM file size: {os.path.getsize(um_path)} bytes")

        return {
            "success": True,
            "message": "SQL queries generated successfully - 2 separate files created",
            "files": {
                "wamis": {
                    "filename": wamis_filename,
                    "file_path": wamis_path,
                    "size_bytes": os.path.getsize(wamis_path),
                    "tables": ["wamis.amsm_employee", "wamis.amsm_employee_service"]
                },
                "um": {
                    "filename": um_filename,
                    "file_path": um_path,
                    "size_bytes": os.path.getsize(um_path),
                    "tables": ["um.umsm_user", "um.umst_user_role"]
                }
            },
            "stats": {
                "total_employees": len(employees_df.dropna(how='all')),
                "successfully_processed": success_count,
                "errors": len(errors)
            },
            "errors": errors,
            "previews": {
                "wamis": wamis_sql[:1000] + "..." if len(wamis_sql) > 1000 else wamis_sql,
                "um": um_sql[:1000] + "..." if len(um_sql) > 1000 else um_sql
            }
        }

    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Error processing files: {str(e)}")

@app.post("/generate-sql")
async def generate_sql(
        master_data: UploadFile = File(...),
        employee_data: UploadFile = File(...),
        tenant_id: int = Form(1),
        operated_by_uid: int = Form(1),
        starting_uid: int = Form(1000),
        starting_employee_id: int = Form(1000),
        starting_user_role_id: int = Form(444303467162447),
        role_id: int = Form(532193206),
        encryption_key: str = Form("JZhqElopWrbkAisF"),
        default_password: str = Form("$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya")
):
    """
    Generate SQL insert queries from uploaded Excel files

    NEW SEQUENCE (Microservice Architecture):
    1. wamis.amsm_employee (WAMIS Database)
    2. wamis.amsm_employee_service (WAMIS Database)
    3. um.umsm_user (UM Database)
    4. um.umst_user_role (UM Database)

    Parameters:
    - master_data: Excel file with master data (designations & offices)
    - employee_data: Excel file with employee details
    - tenant_id: Fixed tenant ID (default: 1)
    - operated_by_uid: Fixed operator user ID (default: 1)
    - starting_uid: Starting UID for users (default: 1000)
    - starting_employee_id: Starting employee_id (default: 1000)
    - starting_user_role_id: Starting user_role_id (default: 444303467162447)
    - role_id: Fixed role ID for all users (default: 532193206)
    - encryption_key: Secret key for AES encryption (CHANGE THIS!)
    - default_password: Default password for all users (will be hashed)
    """
    try:
        # Read master data file
        master_content = await master_data.read()
        designations_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_designation')
        offices_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_office')
        user_role_df = pd.read_excel(io.BytesIO(master_content), sheet_name='umsm_role')

        # Read employee data file
        employee_content = await employee_data.read()
        employees_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])

        # Generate configuration
        config = GenerationConfig(
            tenant_id=tenant_id,
            operated_by_uid=operated_by_uid,
            starting_uid=starting_uid,
            starting_employee_id=starting_employee_id,
            starting_user_role_id=starting_user_role_id,
            role_id=role_id,
            encryption_key=encryption_key,
            default_password=default_password
        )

        # Generate queries
        sql_queries, errors, success_count = generate_queries(
            designations_df,
            offices_df,
            employees_df,
            config,
            user_role_df
        )

        # Save to file
        output_filename = f"insert_queries_{datetime.now().strftime('%Y%m%d_%H%M%S')}.sql"
        output_path = os.path.abspath(output_filename)

        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(sql_queries)

        print(f"✓ SQL file saved to: {output_path}")
        print(f"✓ File size: {os.path.getsize(output_path)} bytes")

        return {
            "success": True,
            "message": "SQL queries generated successfully",
            "filename": output_filename,
            "file_path": output_path,
            "stats": {
                "total_employees": len(employees_df.dropna(how='all')),
                "successfully_processed": success_count,
                "errors": len(errors)
            },
            "errors": errors,
            "sql_preview": sql_queries[:2000] + "..." if len(sql_queries) > 2000 else sql_queries
        }

    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Error processing files: {str(e)}")


@app.get("/download/{filename}")
async def download_sql(filename: str):
    """Download generated SQL file"""
    if not os.path.exists(filename):
        raise HTTPException(status_code=404, detail="File not found")

    return FileResponse(
        filename,
        media_type='application/sql',
        filename=filename
    )


@app.get("/download-wamis/{filename}")
async def download_wamis_sql(filename: str):
    """Download generated WAMIS SQL file"""
    if not os.path.exists(filename):
        raise HTTPException(status_code=404, detail="WAMIS file not found")

    return FileResponse(
        filename,
        media_type='application/sql',
        filename=filename,
        headers={
            "Content-Disposition": f"attachment; filename={filename}"
        }
    )


@app.get("/download-um/{filename}")
async def download_um_sql(filename: str):
    """Download generated UM SQL file"""
    if not os.path.exists(filename):
        raise HTTPException(status_code=404, detail="UM file not found")

    return FileResponse(
        filename,
        media_type='application/sql',
        filename=filename,
        headers={
            "Content-Disposition": f"attachment; filename={filename}"
        }
    )


@app.get("/download-both/{wamis_filename}/{um_filename}")
async def download_both_files(wamis_filename: str, um_filename: str):
    """Download both SQL files as a ZIP archive"""
    import zipfile
    from io import BytesIO

    if not os.path.exists(wamis_filename):
        raise HTTPException(status_code=404, detail="WAMIS file not found")
    if not os.path.exists(um_filename):
        raise HTTPException(status_code=404, detail="UM file not found")

    # Create a ZIP file in memory
    zip_buffer = BytesIO()

    with zipfile.ZipFile(zip_buffer, 'w', zipfile.ZIP_DEFLATED) as zip_file:
        # Add WAMIS file
        zip_file.write(wamis_filename, arcname=wamis_filename)
        # Add UM file
        zip_file.write(um_filename, arcname=um_filename)

    zip_buffer.seek(0)

    # Generate ZIP filename with timestamp
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    zip_filename = f"sql_queries_{timestamp}.zip"

    from fastapi.responses import StreamingResponse

    return StreamingResponse(
        zip_buffer,
        media_type='application/zip',
        headers={
            "Content-Disposition": f"attachment; filename={zip_filename}"
        }
    )

@app.post("/validate-data")
async def validate_data(
        master_data: UploadFile = File(...),
        employee_data: UploadFile = File(...)
):
    """
    Validate uploaded Excel files before SQL generation
    """
    try:
        # Read master data file
        master_content = await master_data.read()
        designations_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_designation')
        offices_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_office')
        user_role_df = pd.read_excel(io.BytesIO(master_content), sheet_name='umsm_role')

        # Read employee data file
        employee_content = await employee_data.read()
        original_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])
        original_df = clean_dataframe(original_df)

        employees_df = original_df[
            original_df[('Incumbency Details', 'Designation*')].notna() &
            original_df[('Employee Number*\n(Manav Sampada\nHRMS ID)', 'Unnamed: 0_level_1')].notna() &
            original_df[('Full Name*\n(Special characters not allowed except space)', 'Unnamed: 5_level_1')].notna()
            ].copy()

        # Validate master data
        master_validation = validate_master_data(designations_df, offices_df)

        # Validate employee data
        employee_validation = validate_employee_data(employees_df, designations_df, offices_df, original_df)

        return {
            "master_data_validation": master_validation,
            "employee_data_validation": {
                "is_valid": employee_validation.is_valid,
                "errors": employee_validation.errors,
                "warnings": employee_validation.warnings,
                "summary": employee_validation.summary
            },
            "can_proceed": employee_validation.is_valid and len(master_validation["errors"]) == 0
        }

    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Error validating files: {str(e)}")


@app.get("/")
async def root():
    return {
        "message": "Excel to SQL Generator API",
        "version": "2.1.0",
        "status": "active",
        "features": {
            "aes_encryption": "enabled",
            "microservice_architecture": "4 tables (WAMIS + UM)",
            "data_sanitization": "strip + lowercase for comparisons",
            "sequence": [
                "1. wamis.amsm_employee",
                "2. wamis.amsm_employee_service",
                "3. um.umsm_user",
                "4. um.umst_user_role"
            ]
        },
        "endpoints": {
            "POST /generate-sql": "Generate SQL from Excel files",
            "POST /validate-data": "Validate Excel files before generation",
            "GET /download/{filename}": "Download generated SQL file"
        },
        "timestamp": datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    }


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="127.0.0.1", port=8000)