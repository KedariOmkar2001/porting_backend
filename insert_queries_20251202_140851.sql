-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 14:08:51
-- ================================================================================
BEGIN;

================================================================================
-- RECORD #1 - EXCEL DATA PREVIEW
================================================================================

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
--   Employee ID           : 29
--   UID                   : 2065458944
--   User Role ID          : 451752644072855

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    29,
    '34679',
    'Mr.',
    'Elon',
    NULL,
    'Musk',
    'Elon Musk',
    29,
    'Y', 2065458944, NOW(), 2065005056,
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
    29,
    3,
    'N',
    '2023-04-03',
    NULL,
    2065458944, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    2065458944, 
    '34679', 
    'gAAAAABpLqWb2VrTrGFmmKou68GScv9IuroMSWBaWEdvdQtUqNAhxex8URysGlKtTRJJjz8eF0bJ3tLHYUjHUuXoQUABMQSKukxYmevUNaPO3uW4KRtMbkQ=', 
    'gAAAAABpLqWbf4ymUHyKrSnfGH5tfZgrjB9Ba76Pz9o5UrKFL1YRnhU7c3uAJx2sQ0mrtG6_4hIxRX3GzukmJIfaxM4G_FVwYw==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2023-04-03', NULL,
    NOW(), 2065458944, NULL,
    'Elon Musk',
    'EXECUTIVE ENGINEER',
    'HPPWD',
    2065005056,
    3,
    29,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    451752644072855, 
    2065458944, 
    None, 
    29, 
    NOW(), 
    2065458944, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #2 - EXCEL DATA PREVIEW
================================================================================

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
--   Employee ID           : 30
--   UID                   : 2065458945
--   User Role ID          : 451752644072856

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    30,
    '11425',
    'Mr.',
    'Jeff',
    NULL,
    'Bezos',
    'Jeff Bezos',
    101,
    'Y', 2065458944, NOW(), 2065005056,
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
    30,
    2,
    'N',
    '2023-08-05',
    NULL,
    2065458944, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    2065458945, 
    '11425', 
    'gAAAAABpLqWbbb22lej3FiRlE1jtehk3MIl2v2Dahbw8bfEuxYlmXIDNYbDI2Duv8OBSRbDensDt9sU0iDgP9j4___zdh06S_pzr459tYmp8ZYbxoErbrm0=', 
    'gAAAAABpLqWbjmsZYlahE1R77UlYaYNSk7vavRur0PO_mU4ENxzMUVamhhZ4m6Ys2BZKeeSOR6dJFbzdvyIOCqAcJTrPvjRrmA==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2023-08-05', NULL,
    NOW(), 2065458944, NULL,
    'Jeff Bezos',
    'ASSISTANT ENGINEER',
    'HPPWD',
    2065005056,
    2,
    30,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    451752644072856, 
    2065458945, 
    120882432, 
    101, 
    NOW(), 
    2065458944, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #3 - EXCEL DATA PREVIEW
================================================================================

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
--   Employee ID           : 31
--   UID                   : 2065458946
--   User Role ID          : 451752644072857

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    31,
    '45354',
    'Mr.',
    'Larry',
    NULL,
    'Ellison',
    'Larry Ellison',
    29,
    'Y', 2065458944, NOW(), 2065005056,
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
    31,
    6,
    'N',
    '2025-10-18',
    NULL,
    2065458944, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    2065458946, 
    '45354', 
    'gAAAAABpLqWbOKw1LBCUCiSUSPhkG_uWSX_rOh4KZ2VV9kjmc3t-aJdnNDoBxOr-P-zLKX9LGjkQ87n91dPgteL799eZ_cSdBszyGxL3cuwEGMoPEN8d_Tk=', 
    'gAAAAABpLqWbhC8tLypMyGYg69RRPbwJlQ94HoRNGXUm8-vtSuSDaFy21sSichbhafOMh7e3YaCzNpHJ1mRPQXhLRKqPKb-xNQ==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2025-10-18', NULL,
    NOW(), 2065458944, NULL,
    'Larry Ellison',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    2065005056,
    6,
    31,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    451752644072857, 
    2065458946, 
    None, 
    29, 
    NOW(), 
    2065458944, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #4 - EXCEL DATA PREVIEW
================================================================================

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
--   Employee ID           : 32
--   UID                   : 2065458947
--   User Role ID          : 451752644072858

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    32,
    '31331',
    'Mr.',
    'Mukesh',
    NULL,
    'Ambani',
    'Mukesh Ambani',
    32,
    'Y', 2065458944, NOW(), 2065005056,
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
    32,
    1,
    'N',
    '2023-08-01',
    NULL,
    2065458944, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    2065458947, 
    '31331', 
    'gAAAAABpLqWblgPQh1zF2uhgDSnW6ZZPbSA5MYWChpolQlDhkUEu7A7lpa0II0TCbEWfSU6J8Jf-Y1B8cW6yVbat41Zs89dbC3Maq4AFZcs5VgyDQ0ZBKvc=', 
    'gAAAAABpLqWbAGAGzMV1mwJM-MzkVb2QINuwasqocsk-4zUw6DP02JMO8CbO3fZ738FqRAqXmHukiaMTGknAMb96sW6Z-HUFDA==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2023-08-01', NULL,
    NOW(), 2065458944, NULL,
    'Mukesh Ambani',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
    1,
    32,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    451752644072858, 
    2065458947, 
    120878848, 
    32, 
    NOW(), 
    2065458944, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #5 - EXCEL DATA PREVIEW
================================================================================

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
--   Employee ID           : 33
--   UID                   : 2065458948
--   User Role ID          : 451752644072859

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


-- SQL queries for the above Record
-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    33,
    '12697',
    'Mr.',
    'Gautam',
    NULL,
    'Adani',
    'Gautam Adani',
    32,
    'Y', 2065458944, NOW(), 2065005056,
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
    33,
    1,
    'N',
    '2024-03-16',
    NULL,
    2065458944, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    2065458948, 
    '12697', 
    'gAAAAABpLqWbt9WLO7XwpPKQxFyqFAgfTzetnDe3mibh1KNRGU5uQ-aJQA6_mz8PHrPRr8pvNOKibDRJuUW6yuCwtNpLRKO-iMj9Av1eJ6DN_w-ucHaxNYM=', 
    'gAAAAABpLqWb17vRNtFk6JapF2miPBLfnibEm7YR7iTVV10wpg14qhxLL92Bdqi9pBq_3vs4GxoVgx0CPOBf-zx2RPmYZkyo5g==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 2065458944, NULL,
    'Gautam Adani',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
    1,
    33,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    451752644072859, 
    2065458948, 
    120878848, 
    32, 
    NOW(), 
    2065458944, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 5
-- Total errors: 0