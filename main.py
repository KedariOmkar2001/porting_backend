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


class ValidationResult(BaseModel):
    is_valid: bool
    errors: List[Dict[str, Any]]
    warnings: List[Dict[str, Any]]
    summary: Dict[str, Any]


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


# Enhanced version with fuzzy matching for designation names (space/case issues)
def get_designation_id_from_designation_name(designation_name, designations_table):
    if pd.isna(designation_name) or designation_name is None:
        return None

    designation_name_str = str(designation_name)

    # Step 1: Try exact match first
    result = designations_table.loc[
        designations_table['designation_name'] == designation_name_str,
        'designation_id'
    ]
    if not result.empty:
        return result.iloc[0]

    # Step 2: Try fuzzy match (strip whitespace and case-insensitive)
    designation_normalized = designation_name_str.strip().upper()

    for idx, row in designations_table.iterrows():
        master_designation = row['designation_name']
        if pd.notna(master_designation):
            master_normalized = str(master_designation).strip().upper()
            if master_normalized == designation_normalized:
                return row['designation_id']

    return None


# Enhanced version with fuzzy matching for space/case issues and section office handling
def get_office_id_from_office_name(office_name, offices_table):
    if pd.isna(office_name) or office_name is None:
        return None

    office_name_str = str(office_name)

    # IMPORTANT: Handle section offices (contains " - ")
    # For offices like "LEDA SECTION - REWALSAR SUB DIVISION - EXECUTIVE ENGINEER NERCHOWK DIVISION"
    # Extract the first part before the first " - " (the actual section office name)
    if " - " in office_name_str:
        office_name_str = office_name_str.split(" - ")[0].strip()

    # Step 1: Try exact match first
    result = offices_table.loc[
        offices_table['office_name'] == office_name_str,
        'office_id'
    ]
    if not result.empty:
        return result.iloc[0]

    # Step 2: Try fuzzy match (strip whitespace and case-insensitive)
    # This handles cases like 'REWALSAR SUB DIVISION ' vs 'REWALSAR SUB DIVISION'
    office_name_normalized = office_name_str.strip().upper()

    for idx, row in offices_table.iterrows():
        master_office_name = row['office_name']
        if pd.notna(master_office_name):
            master_normalized = str(master_office_name).strip().upper()
            if master_normalized == office_name_normalized:
                return row['office_id']

    return None


# EXACT COPY from CMD code - NO MODIFICATIONS
def get_office_of_user_by_designation(row):
    designation_mapping_to_row = {
        "DIVISIONAL ACCOUNTANT OFFICER": ('Incumbency Details', 'Division Office Name*'),
        "JUNIOR ENGINEER": ('Incumbency Details', 'Section Office Name*'),
        "AUDITOR": ('Incumbency Details', 'Division Office Name*'),
        "ASSISTANT ENGINEER": ('Incumbency Details', 'Sub-division Office Name*'),
        "JUNIOR DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
        "TENDER ASSISTANT": ('Incumbency Details', 'Division Office Name*'),
        "OTHER": ('Incumbency Details','Division Office Name*'),
        "SUPERINTENDENT":('Incumbency Details','Division Office Name*'),
        "EXECUTIVE ENGINEER":('Incumbency Details','Division Office Name*')
    }

    designation_name = row[('Incumbency Details', 'Designation*')]
    office_column = designation_mapping_to_row.get(designation_name)

    if office_column is None:
        return None

    return row[office_column]


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


def generate_queries(designations_df, offices_df, employees_df, config: GenerationConfig):
    """Generate SQL INSERT queries from DataFrames - EXACT SAME as CMD"""

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
            office_name = get_office_of_user_by_designation(row)
            office_id = get_office_id_from_office_name(office_name, offices_df)

            # NO VALIDATION - just like CMD code, let it process even if None
            uid = config.starting_uid + success_count

            # Query 1: um.umsm_user - matching CMD format
            user_query = f"""INSERT INTO um.umsm_user (
    user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    '{int(employee_number) if not pd.isna(employee_number) else 0}', 
    {sql_val(email)}, 
    {sql_val(contact_no)}, 
    'temp_password_123',
    NULL,
    'A', 'N', 'Y',
    {sql_val(period_from)}, {sql_val(period_till)},
    NOW(), {config.operated_by_uid}, NULL,
    {sql_val(full_name)},
    {sql_val(designation)},
    'HPPWD',
    {config.tenant_id},
    {sql_val(designation_id, is_int=True)},
    {sql_val(employee_number, is_int=True)},
    true
);"""

            # Query 2: wamis.amsm_employee - matching CMD format
            employee_query = f"""INSERT INTO wamis.amsm_employee (
    emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
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

            # Query 3: wamis.amsm_employee_service - matching CMD format with period_from/period_till
            service_query = f"""INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    {sql_val(office_id, is_int=True)},
    {sql_val(employee_number, is_int=True)},
    {sql_val(designation_id, is_int=True)},
    'N',
    {sql_val(period_from)},
    {sql_val(period_till)},
    {config.operated_by_uid}, NOW(), {config.tenant_id},
    'Y', 'A', 'A', true
);"""

            queries.append(f"-- Employee: {full_name} ({employee_number})")
            queries.append(user_query)
            queries.append("")
            queries.append(employee_query)
            queries.append("")
            queries.append(service_query)
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

        # Read employee data file
        employee_content = await employee_data.read()
        original_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])

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


@app.post("/generate-sql")
async def generate_sql(
        master_data: UploadFile = File(...),
        employee_data: UploadFile = File(...),
        tenant_id: int = Form(1),
        operated_by_uid: int = Form(1),
        starting_uid: int = Form(1000),
        skip_validation: bool = Form(False)
):
    """
    Generate SQL insert queries from uploaded Excel files
    """
    try:
        # Read master data file
        master_content = await master_data.read()
        designations_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_designation')
        offices_df = pd.read_excel(io.BytesIO(master_content), sheet_name='gblm_office')

        # Read employee data file
        employee_content = await employee_data.read()
        original_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])

        # Filter out rows without designation - SAME AS CMD
        employees_df = original_df[
            original_df[('Incumbency Details', 'Designation*')].notna()
        ]

        # Validate data unless skip_validation is True
        validation_result = None
        if not skip_validation:
            master_validation = validate_master_data(designations_df, offices_df)
            employee_validation = validate_employee_data(employees_df, designations_df, offices_df, original_df)

            validation_result = {
                "master_data": master_validation,
                "employee_data": {
                    "is_valid": employee_validation.is_valid,
                    "errors": employee_validation.errors,
                    "warnings": employee_validation.warnings,
                    "summary": employee_validation.summary
                }
            }

            # Only block if CRITICAL structural errors (missing columns)
            # Don't block for data quality issues - just report them
            if len(master_validation["errors"]) > 0:
                return {
                    "success": False,
                    "message": "Master data validation failed. Please check the required columns.",
                    "validation": validation_result
                }

        # Generate configuration
        config = GenerationConfig(
            tenant_id=tenant_id,
            operated_by_uid=operated_by_uid,
            starting_uid=starting_uid
        )

        # Generate queries - this will handle errors gracefully like CMD
        sql_queries, errors, success_count = generate_queries(
            designations_df,
            offices_df,
            original_df,  # Pass original df, it will filter inside
            config
        )

        # Save to file
        output_filename = f"insert_queries_{datetime.now().strftime('%Y%m%d_%H%M%S')}.sql"
        with open(output_filename, 'w', encoding='utf-8') as f:
            f.write(sql_queries)

        response = {
            "success": True,
            "message": "SQL queries generated successfully",
            "filename": output_filename,
            "stats": {
                "total_employees": len(original_df),
                "filtered_employees": len(employees_df),
                "successfully_processed": success_count,
                "errors": len(errors)
            },
            "errors": errors,
            "sql_preview": sql_queries[:2000] + "..." if len(sql_queries) > 2000 else sql_queries
        }

        if validation_result:
            response["validation"] = validation_result

        return response

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


@app.get("/")
async def root():
    return {
        "message": "Excel to SQL Generator API",
        "version": "2.0.0",
        "endpoints": {
            "POST /validate-data": "Validate Excel files before generation",
            "POST /generate-sql": "Generate SQL from Excel files (with validation)",
            "GET /download/{filename}": "Download generated SQL file"
        }
    }


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)