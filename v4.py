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
    encryption_key: str = "AZhqDlopWrbkAisM"  # Change this!
    default_password: str = "User@123"
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


# EXACT COPY from CMD code - NO MODIFICATIONS
def get_designation_id_from_designation_name(designation_name, designations_table):

    if designation_name == 'DIVISIONAL ACCOUNTANT OFFICER':
        designation_name = "DIVISIONAL ACCOUNTS OFFICER"

    result = designations_table.loc[
        designations_table['designation_name'] == designation_name,
        'designation_id'
    ]
    return result.iloc[0] if not result.empty else None


# Get the role_id of the user
def get_role_id_of_user_from_umsm_role_table(designation_name,umsm_role_table):

    cleaned_designation_name = designation_name.strip().lower()
    print("Cleaned Designation Name:",cleaned_designation_name)
    result = umsm_role_table.loc[
        umsm_role_table['role_name'].str.strip().str.lower() == cleaned_designation_name,
        'role_id'
    ]

    print("Result:",result)
    return result.iloc[0] if not result.empty else None


# EXACT COPY from CMD code - NO MODIFICATIONS
def get_office_id_from_office_name(office_name, offices_table):
    result = offices_table.loc[
        offices_table['office_name'] == office_name,
        'office_id'
    ]
    return result.iloc[0] if not result.empty else None

def clean_dataframe(df: pd.DataFrame) -> pd.DataFrame:
    df = df.dropna(how='all').dropna(axis=1, how='all')
    df = df.replace(r'^\s*$', pd.NA, regex=True)
    df = df.dropna(how='all').dropna(axis=1, how='all')
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
        available_offices = set(offices_df['office_name'].dropna().tolist())

    available_designations = set()
    if 'designation_name' in designations_df.columns:
        available_designations = set(designations_df['designation_name'].dropna().tolist())

    # Create a mapping of filtered index to original Excel row
    # Employees_df is already filtered, so we use its index
    original_indices = employees_df.index.tolist()

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
            # This shouldn't happen as we filter these out
            errors.append({
                "type": "MISSING_VALUE",
                "row": excel_row,
                "column": "Designation",
                "message": f"Excel Row {excel_row}: Designation is missing"
            })
        else:
            # Check if designation exists in master data
            designation_id = get_designation_id_from_designation_name(designation, designations_df)
            if designation_id is None:
                errors.append({
                    "type": "INVALID_REFERENCE",
                    "row": excel_row,
                    "column": "Designation",
                    "value": designation,
                    "message": f"Excel Row {excel_row}: Designation '{designation}' not found in master data"
                })

            # Check if office can be determined
            office_name = get_office_of_user_by_designation(row)
            if office_name is None:
                warnings.append({
                    "type": "MISSING_MAPPING",
                    "row": excel_row,
                    "column": "Office",
                    "message": f"Excel Row {excel_row}: No office mapping defined for designation '{designation}'"
                })
            elif pd.isna(office_name):
                errors.append({
                    "type": "MISSING_VALUE",
                    "row": excel_row,
                    "column": "Office Name",
                    "message": f"Excel Row {excel_row}: Office name is missing for designation '{designation}'"
                })
            else:
                # Check if office exists in master data
                office_id = get_office_id_from_office_name(office_name, offices_df)
                if office_id is None:
                    # Find closest matches for better error messages
                    closest_matches = []
                    office_name_check = str(office_name)
                    for avail_office in available_offices:
                        if office_name_check.strip().upper() == str(avail_office).strip().upper():
                            closest_matches.append(avail_office)

                    error_msg = f"Excel Row {excel_row}: Office '{office_name}' not found in master data"
                    if closest_matches:
                        error_msg += f" (Case/space mismatch? Found similar: '{closest_matches[0]}')"

                    errors.append({
                        "type": "INVALID_REFERENCE",
                        "row": excel_row,
                        "column": "Office Name",
                        "value": office_name,
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
    # Data quality issues (missing values, invalid refs) are reported but don't block
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

# EXACT COPY from CMD code - NO MODIFICATIONS
def get_office_of_user_by_designation(row):
    designation_mapping_to_row = {
        "DIVISIONAL ACCOUNTANT OFFICER": ('Incumbency Details', 'Division Office Name*'),
        "JUNIOR ENGINEER": ('Incumbency Details', 'Section Office Name*'),
        "AUDITOR": ('Incumbency Details', 'Division Office Name*'),
        "ASSISTANT ENGINEER": ('Incumbency Details', 'Sub-division Office Name*'),
        "JUNIOR DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
        "TENDER ASSISTANT": ('Incumbency Details', 'Division Office Name*'),
        "DIVISIONAL ACCOUNTS OFFICER" : ('Incumbency Details', 'Division Office Name*'),
        "EXECUTIVE ENGINEER" : ('Incumbency Details','Section Office Name*'),
    }

    designation_name = row[('Incumbency Details', 'Designation*')]
    office_column = designation_mapping_to_row.get(designation_name)

    if office_column is None:
        return None

    office_name = str(row[office_column]).strip()
    if isinstance(office_column, tuple) and office_column[1].strip() == 'Section Office Name*':
        # It's definitely the Section Office column → extract only first part
        if ' - ' in office_name:
            office_name = office_name.split(' - ', 1)[0].strip()
        elif '-' in office_name:
            office_name = office_name.split('-', 1)[0].strip()

    return office_name


def generate_queries(designations_df, offices_df, employees_df, config: GenerationConfig , user_role_df):
    """Generate SQL INSERT queries from DataFrames"""

    # Filter out rows with null designations - SAME AS CMD
    employees_df = employees_df[
        employees_df[('Incumbency Details', 'Designation*')].notna()
    ].copy()

    # NO STRIPPING OR CLEANING - keep data as-is like CMD code

    queries = []
    errors = []
    success_count = 0

    CURRENT_TIMESTAMP = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    queries.append("-- Generated SQL Insert Queries")
    queries.append(f"-- Generated on: {CURRENT_TIMESTAMP}")
    queries.append("-- " + "=" * 80)
    queries.append("BEGIN;")
    queries.append("")

    for index, row in employees_df.iterrows():
        try:
            # Extract employee data - SAME AS CMD
            employee_number = row[('Employee Number*\n(Manav Sampada\nHRMS ID)', 'Unnamed: 0_level_1')]
            title = row[('Title*', 'Unnamed: 1_level_1')]
            first_name = row[('First Name*\n(Special characters not allowed except space)', 'Unnamed: 2_level_1')]
            middle_name = row[('Middle Name\n(Special characters not allowed except space)', 'Unnamed: 3_level_1')]
            last_name = row[('Last Name\n(Special characters not allowed except space)', 'Unnamed: 4_level_1')]
            full_name = row[('Full Name*\n(Special characters not allowed except space)', 'Unnamed: 5_level_1')]
            date_of_joining = row[
                ('Date of Joining (in Deptt. Contratual/ Regular)*\n(dd-mmm-yyyy)', 'Unnamed: 6_level_1')]
            date_of_relieving = row[('Date of Relieving/Termination\n(dd-mmm-yyyy)', 'Unnamed: 7_level_1')]

            designation = row[('Incumbency Details', 'Designation*')]
            period_from = row[('Incumbency Details', 'Period From (at presnet office)*\n(dd-mmm-yyyy)')]
            period_till = row[('Incumbency Details', 'Period Till\n(dd-mmm-yyyy)')]

            company_organization = row[('Company/Organisation', 'Unnamed: 15_level_1')]
            email = row[('Email', 'Unnamed: 16_level_1')]
            contact_no = row[('Contact No.', 'Unnamed: 17_level_1')]

            # Get IDs using EXACT same methods as CMD
            designation_id = get_designation_id_from_designation_name(designation, designations_df)
            office_name = str(get_office_of_user_by_designation(row)).strip()
            office_id = get_office_id_from_office_name(office_name, offices_df)

            # NO VALIDATION - just like CMD code, let it process even if None
            uid = config.starting_uid + success_count
            employee_id = config.starting_employee_id + success_count
            user_role_id = config.starting_user_role_id + success_count
            user_role_id_from_role_name = get_role_id_of_user_from_umsm_role_table(designation,user_role_df)

            # ============ ENCRYPT SENSITIVE DATA ============
            encrypted_email = encrypt_aes(str(email) if pd.notna(email) else None, config.encryption_key)
            encrypted_phone = encrypt_aes(str(contact_no) if pd.notna(contact_no) else None, config.encryption_key)
            hashed_password = config.default_password

            # Use encrypted values or NULL if encryption failed
            email_value = f"'{encrypted_email}'" if encrypted_email else "NULL"
            phone_value = f"'{encrypted_phone}'" if encrypted_phone else "NULL"

            # ============ PRINT EXCEL DATA PREVIEW ============
            queries.append("=" * 80)
            queries.append(f"-- RECORD #{success_count + 1} - EXCEL DATA PREVIEW")
            queries.append("=" * 80)
            queries.append("")
            queries.append("-- BASIC INFORMATION FROM EXCEL:")
            queries.append(f"--   Employee Number       : {sql_val(employee_number,is_int=True) if pd.notna(employee_number) else 'N/A'}")
            queries.append(f"--   Title                 : {title if pd.notna(title) else 'N/A'}")
            queries.append(f"--   First Name            : {first_name if pd.notna(first_name) else 'N/A'}")
            queries.append(f"--   Middle Name           : {middle_name if pd.notna(middle_name) else 'N/A'}")
            queries.append(f"--   Last Name             : {last_name if pd.notna(last_name) else 'N/A'}")
            queries.append(f"--   Full Name             : {full_name if pd.notna(full_name) else 'N/A'}")
            queries.append("")
            queries.append("-- DESIGNATION & OFFICE FROM EXCEL:")
            queries.append(f"--   Designation           : {designation if pd.notna(designation) else 'N/A'}")
            queries.append(f"--   Office Name           : {office_name if pd.notna(office_name) else 'N/A'}")
            queries.append("")
            queries.append("-- DATES FROM EXCEL:")
            queries.append(f"--   Date of Joining       : {date_of_joining if pd.notna(date_of_joining) else 'N/A'}")
            queries.append(
                f"--   Date of Relieving     : {date_of_relieving if pd.notna(date_of_relieving) else 'N/A'}")
            queries.append(f"--   Period From           : {period_from if pd.notna(period_from) else 'N/A'}")
            queries.append(f"--   Period Till           : {period_till if pd.notna(period_till) else 'N/A'}")
            queries.append("")
            queries.append("-- CONTACT INFORMATION FROM EXCEL:")
            queries.append(f"--   Email                 : {email if pd.notna(email) else 'N/A'}")
            queries.append(f"--   Contact Number        : {sql_val(contact_no,is_int=True) if pd.notna(contact_no) else 'N/A'}")
            queries.append(
                f"--   Company/Organization  : {company_organization if pd.notna(company_organization) else 'N/A'}")
            queries.append("")
            queries.append("-- MAPPED/RESOLVED IDs:")
            queries.append(f"--   Designation ID        : {designation_id if designation_id else 'NOT FOUND'}")
            queries.append(f"--   Office ID             : {office_id if office_id else 'NOT FOUND'}")
            queries.append(f"--   Role ID               : {user_role_id_from_role_name if user_role_id_from_role_name else 'NOT FOUND'}")
            queries.append("")
            queries.append("-- GENERATED IDs (Auto-incrementing):")
            queries.append(f"--   Employee ID           : {employee_id}")
            queries.append(f"--   UID                   : {uid}")
            queries.append(f"--   User Role ID          : {user_role_id}")
            queries.append("")
            queries.append("-- SECURITY:")
            queries.append(f"--   Email Encrypted       : {'YES' if encrypted_email else 'NO'}")
            queries.append(f"--   Phone Encrypted       : {'YES' if encrypted_phone else 'NO'}")
            queries.append(f"--   Password (Hashed)     : {hashed_password[:20]}... (SHA256)")
            queries.append("")
            queries.append("=" * 80)
            queries.append("")

            # ============ GENERATE QUERIES IN NEW SEQUENCE ============

            # Query 1: wamis.amsm_employee (FIRST - WAMIS DATABASE)
            employee_query = f"""INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    {employee_id},
    '{int(employee_number) if not pd.isna(employee_number) else 0}',
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

            # Query 2: wamis.amsm_employee_service (SECOND - WAMIS DATABASE)
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

            # Query 3: um.umsm_user (THIRD - UM DATABASE)
            user_query = f"""INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    {uid}, 
    '{int(employee_number) if not pd.isna(employee_number) else 0}', 
    {email_value}, 
    {phone_value}, 
    '{hashed_password}',
    '',
    'A', 'N', 'N',
    {sql_val(period_from)}, {sql_val(period_till)},
    NOW(), {config.operated_by_uid}, NULL,
    {sql_val(full_name)},
    {sql_val(designation)},
    {sql_val(company_organization)},
    {config.tenant_id},
    {sql_val(designation_id, is_int=True)},
    {employee_id},
    true
);"""

            # Query 4: um.umst_user_role (FOURTH - UM DATABASE)
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

            queries.append("")
            #queries.append("=" * 80)
            #queries.append(f"-- Employee: {full_name} ({sql_val(employee_number,is_int=True)})")
            #queries.append(f"-- Employee ID: {employee_id} | UID: {uid} | User Role ID: {user_role_id_from_role_name}")
            #queries.append("=" * 80)
            queries.append("SQL queries for the above Record")
            queries.append("-- [1/4] WAMIS DATABASE - amsm_employee")
            queries.append(employee_query)
            queries.append("")
            queries.append("-- [2/4] WAMIS DATABASE - amsm_employee_service")
            queries.append(service_query)
            queries.append("")
            queries.append("-- [3/4] UM DATABASE - umsm_user")
            queries.append(user_query)
            queries.append("")
            queries.append("-- [4/4] UM DATABASE - umst_user_role")
            queries.append(user_role_query)
            queries.append("")
            queries.append("-- " + "-" * 70)
            queries.append("")

            success_count += 1

        except Exception as e:
            errors.append(f"Row {index + 1}: {str(e)}")

    queries.append("COMMIT;")
    queries.append("")
    queries.append(f"-- Total records processed: {success_count}")
    queries.append(f"-- Total errors: {len(errors)}")

    return "\n".join(queries), errors, success_count


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
        encryption_key: str = Form("your-secret-key-here"),
        default_password: str = Form("ChangeMe@123")
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
                "total_employees": len(employees_df),
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

        # Filter employees with designations - SAME AS CMD
        employees_df = original_df[
            original_df[('Incumbency Details', 'Designation*')].notna()
        ]

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
        "version": "2.0.0",
        "status": "active",
        "features": {
            "aes_encryption": "enabled",
            "microservice_architecture": "4 tables (WAMIS + UM)",
            "sequence": [
                "1. wamis.amsm_employee",
                "2. wamis.amsm_employee_service",
                "3. um.umsm_user",
                "4. um.umst_user_role"
            ]
        },
        "endpoints": {
            "POST /generate-sql": "Generate SQL from Excel files",
            "GET /download/{filename}": "Download generated SQL file"
        },
        "timestamp": datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    }


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="127.0.0.1", port=8000)