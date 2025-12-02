-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 14:47:03
-- ================================================================================
BEGIN;

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECORD #1 - EXCEL DATA PREVIEW
----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 34679
--   Title                 : Mr.
--   First Name            : Elon
--   Middle Name           : N/A
--   Last Name             : Musk
--   Full Name             : Elon Musk

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : EXECUTIVE ENGINEER
--   Office Name           : South Presidency Division

-- DATES FROM EXCEL:
--   Date of Joining       : 1992-09-05 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-04-03 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : elonmusk@gmail.com
--   Contact Number        : 1234567890
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 3
--   Office ID             : 29
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 94
--   UID                   : 90
--   User Role ID          : 444303467162447

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    94,
    '34679',
    'Mr.',
    'Elon',
    NULL,
    'Musk',
    'Elon Musk',
    29,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '1992-09-05',
    NULL,
    'N',
    true
);

-- [2/4] WAMIS DATABASE - amsm_employee_service
INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    29,
    94,
    3,
    'N',
    '2023-04-03',
    NULL,
    531773952, NOW(), 531802112,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    90, 
    '34679', 
    '7Ah0eSrAbarhWcDKV/Af5nua6vcFhARgADr5zwTPcxw=', 
    '5ivM44ytoWKrcJiJp4bCQA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-04-03', NULL,
    NOW(), 531773952, NULL,
    'Elon Musk',
    'EXECUTIVE ENGINEER',
    'HPPWD',
    531802112,
    3,
    94,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162447, 
    90, 
    None, 
    29, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECORD #2 - EXCEL DATA PREVIEW
----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 11425
--   Title                 : Mr.
--   First Name            : Jeff
--   Middle Name           : N/A
--   Last Name             : Bezos
--   Full Name             : Jeff Bezos

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : ASSISTANT ENGINEER
--   Office Name           : Buildings (Construction & Maintenance) Sub- Division ,PWD, Ponneri

-- DATES FROM EXCEL:
--   Date of Joining       : 2007-07-18 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-08-05 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : jeffbezos@gmail.com
--   Contact Number        : 1234567890
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 2
--   Office ID             : 101
--   Role ID               : 120882432

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 95
--   UID                   : 91
--   User Role ID          : 444303467162448

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    95,
    '11425',
    'Mr.',
    'Jeff',
    NULL,
    'Bezos',
    'Jeff Bezos',
    101,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2007-07-18',
    NULL,
    'N',
    true
);

-- [2/4] WAMIS DATABASE - amsm_employee_service
INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    101,
    95,
    2,
    'N',
    '2023-08-05',
    NULL,
    531773952, NOW(), 531802112,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    91, 
    '11425', 
    '9sHctn91ptOsF5aZzju3xR/gFh1NDHRdzPZHjBG223c=', 
    '5ivM44ytoWKrcJiJp4bCQA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-08-05', NULL,
    NOW(), 531773952, NULL,
    'Jeff Bezos',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    95,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162448, 
    91, 
    120882432, 
    101, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECORD #3 - EXCEL DATA PREVIEW
----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 45354
--   Title                 : Mr.
--   First Name            : Larry
--   Middle Name           : N/A
--   Last Name             : Ellison
--   Full Name             : Larry Ellison

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : DIVISIONAL ACCOUNTANT OFFICER
--   Office Name           : South Presidency Division

-- DATES FROM EXCEL:
--   Date of Joining       : 2004-12-20 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2025-10-18 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : larryellison@gmail.com
--   Contact Number        : 1234567890
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 6
--   Office ID             : 29
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 96
--   UID                   : 92
--   User Role ID          : 444303467162449

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    96,
    '45354',
    'Mr.',
    'Larry',
    NULL,
    'Ellison',
    'Larry Ellison',
    29,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2004-12-20',
    NULL,
    'N',
    true
);

-- [2/4] WAMIS DATABASE - amsm_employee_service
INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    29,
    96,
    6,
    'N',
    '2025-10-18',
    NULL,
    531773952, NOW(), 531802112,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    92, 
    '45354', 
    'QuJ/uRI9EinKrnTl/Lsp6r0hhqWu+ZCpDavQ72p/tD8=', 
    '5ivM44ytoWKrcJiJp4bCQA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2025-10-18', NULL,
    NOW(), 531773952, NULL,
    'Larry Ellison',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    531802112,
    6,
    96,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162449, 
    92, 
    None, 
    29, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECORD #4 - EXCEL DATA PREVIEW
----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 31331
--   Title                 : Mr.
--   First Name            : Mukesh
--   Middle Name           : N/A
--   Last Name             : Ambani
--   Full Name             : Mukesh Ambani

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : Buildings (Construction & Maintenance)   Division ,PWD, Vellore

-- DATES FROM EXCEL:
--   Date of Joining       : 1992-12-30 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-08-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : mukeshambani@gmail.com
--   Contact Number        : 9816300888
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 32
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 97
--   UID                   : 93
--   User Role ID          : 444303467162450

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    97,
    '31331',
    'Mr.',
    'Mukesh',
    NULL,
    'Ambani',
    'Mukesh Ambani',
    32,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '1992-12-30',
    NULL,
    'N',
    true
);

-- [2/4] WAMIS DATABASE - amsm_employee_service
INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    32,
    97,
    1,
    'N',
    '2023-08-01',
    NULL,
    531773952, NOW(), 531802112,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    93, 
    '31331', 
    'uE6e3tLZ7mjgYQgKgr1h7L0hhqWu+ZCpDavQ72p/tD8=', 
    'F3t4dHqFfTnJsuGHPlhc1A==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-08-01', NULL,
    NOW(), 531773952, NULL,
    'Mukesh Ambani',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    97,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162450, 
    93, 
    120878848, 
    32, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECORD #5 - EXCEL DATA PREVIEW
----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 12697
--   Title                 : Mr.
--   First Name            : Gautam
--   Middle Name           : N/A
--   Last Name             : Adani
--   Full Name             : Gautam Adani

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : Buildings (Construction & Maintenance)   Division ,PWD, Vellore

-- DATES FROM EXCEL:
--   Date of Joining       : 2000-09-18 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-03-16 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : gautamadani@gmail.com
--   Contact Number        : 9816368641
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 32
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 98
--   UID                   : 94
--   User Role ID          : 444303467162451

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    98,
    '12697',
    'Mr.',
    'Gautam',
    NULL,
    'Adani',
    'Gautam Adani',
    32,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2000-09-18',
    NULL,
    'N',
    true
);

-- [2/4] WAMIS DATABASE - amsm_employee_service
INSERT INTO wamis.amsm_employee_service (
    office_id, employee_id, designation_id, is_additional_charge,
    start_date, end_date, operated_by, operated_on, tenant_id,
    is_latest, anfn, status, is_data_ported
) VALUES (
    32,
    98,
    1,
    'N',
    '2024-03-16',
    NULL,
    531773952, NOW(), 531802112,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    94, 
    '12697', 
    'ygtTHzrds+fcT4PlOxxh7IEk/VRZSEtys4rui8CR7Gc=', 
    '8JaonC037f7BTcubCDQUog==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 531773952, NULL,
    'Gautam Adani',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    98,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162451, 
    94, 
    120878848, 
    32, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 5
-- Total errors: 0