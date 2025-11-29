from fastapi import FastAPI, UploadFile, File, Form, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
import pandas as pd
import math
from datetime import datetime
from typing import List, Optional
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
    result = designations_table.loc[
        designations_table['designation_name'] == designation_name,
        'designation_id'
    ]
    return result.iloc[0] if not result.empty else None


# EXACT COPY from CMD code - NO MODIFICATIONS
def get_office_id_from_office_name(office_name, offices_table):
    result = offices_table.loc[
        offices_table['office_name'] == office_name,
        'office_id'
    ]
    return result.iloc[0] if not result.empty else None


# EXACT COPY from CMD code - NO MODIFICATIONS
def get_office_of_user_by_designation(row):
    designation_mapping_to_row = {
        "DIVISIONAL ACCOUNTANT OFFICER": ('Incumbency Details', 'Division Office Name*'),
        "JUNIOR ENGINEER": ('Incumbency Details', 'Section Office Name*'),
        "AUDITOR": ('Incumbency Details', 'Division Office Name*'),
        "ASSISTANT ENGINEER": ('Incumbency Details', 'Sub-division Office Name*'),
        "JUNIOR DRAUGHTSMAN": ('Incumbency Details', 'Division Office Name*'),
        "TENDER ASSISTANT": ('Incumbency Details', 'Division Office Name*'),
    }

    designation_name = row[('Incumbency Details', 'Designation*')]
    office_column = designation_mapping_to_row.get(designation_name)

    if office_column is None:
        return None

    return row[office_column]


def generate_queries(designations_df, offices_df, employees_df, config: GenerationConfig):
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


@app.post("/generate-sql")
async def generate_sql(
        master_data: UploadFile = File(...),
        employee_data: UploadFile = File(...),
        tenant_id: int = Form(1),
        operated_by_uid: int = Form(1),
        starting_uid: int = Form(1000)
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
        employees_df = pd.read_excel(io.BytesIO(employee_content), sheet_name='Employee Details', header=[0, 1])

        # Generate configuration
        config = GenerationConfig(
            tenant_id=tenant_id,
            operated_by_uid=operated_by_uid,
            starting_uid=starting_uid
        )

        # Generate queries
        sql_queries, errors, success_count = generate_queries(
            designations_df,
            offices_df,
            employees_df,
            config
        )

        # Save to file
        output_filename = f"insert_queries_{datetime.now().strftime('%Y%m%d_%H%M%S')}.sql"
        with open(output_filename, 'w', encoding='utf-8') as f:
            f.write(sql_queries)

        return {
            "success": True,
            "message": "SQL queries generated successfully",
            "filename": output_filename,
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


@app.get("/")
async def root():
    return {
        "message": "Excel to SQL Generator API",
        "version": "1.0.0",
        "endpoints": {
            "POST /generate-sql": "Generate SQL from Excel files",
            "GET /download/{filename}": "Download generated SQL file"
        }
    }


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)