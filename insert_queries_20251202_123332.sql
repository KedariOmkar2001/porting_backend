-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 12:33:32
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
--   Office Name           : nan

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
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 94
--   UID                   : 90
--   User Role ID          : 444303467162447

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


SQL queries for the above Record
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
    NULL,
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
    NULL,
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
    'gAAAAABpLo9EikHC_hytAqoP4MawIn6ecVLgn1v7Z4Xgisc2T0ckQe7wUs-bQTLXiwVyxCGVlBRUui77mlcwFimPIszx6QnynuVtkOic6x9DLHXoNFqUqSM=', 
    'gAAAAABpLo9EDhwKZe2aevFmrrU00J_b6n-DsJqd_H5RSJ-htPbWveXNQAQJhMynslqN6UjFYW_F9Ghp3DyyFe-5b6SDKNUsXA==', 
    'Welcome@2024',
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
--   Employee ID           : 95
--   UID                   : 91
--   User Role ID          : 444303467162448

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


SQL queries for the above Record
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
    'gAAAAABpLo9ESAjpPRHSEZXEDjWlnka2i1AIczyT0Gc00jt6Ielo2zsFW6hNJEYdCUbByKtGB0ZHzZz7DWlmeZMr5kvlX78nszN8LOQsI4fjALShh3534Pc=', 
    'gAAAAABpLo9EBg2RqNfVDmxqdpdDN-IWvuKu4-5dzK5QVTL0kSj3LC2HzbwzUltU69foJlpkaV08L_-bZqCGslBFAoC2RdGcoA==', 
    'Welcome@2024',
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
--   Office Name           : EXECUTIVE ENGINEER NERCHOWK DIVISION

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
--   Designation ID        : NOT FOUND
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 96
--   UID                   : 92
--   User Role ID          : 444303467162449

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


SQL queries for the above Record
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
    NULL,
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
    NULL,
    96,
    NULL,
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
    'gAAAAABpLo9ER6Pg4DoLn3Gp8r_N4OyS0Y0DCcCKd75C7UIBCXInfB4Wnl0gN-w-nr9GjzwMlk3HP7sESReMEU7mAJobLNt9u1qm8nJSiAFaelsZTy4Whfw=', 
    'gAAAAABpLo9EJ9Iu6zApgvyqIAE0OjXmL1NI-aqutxsMJ2kat_uy-oBVrZv_NXMFSaCyr-72MOn9SZvllx5DqjPKY6CK8bPOtQ==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2025-10-18', NULL,
    NOW(), 531773952, NULL,
    'Larry Ellison',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    531802112,
    NULL,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
--   Employee ID           : 97
--   UID                   : 93
--   User Role ID          : 444303467162450

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


SQL queries for the above Record
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
    'gAAAAABpLo9EgSSRhks34mMEjjnZRX5mQgNL-Wy1zh28-rPuut30Q7CDL6JGdy_9NvNnGY9xdrJoahbB2yWaTa7g5HP7-o0QJsd8Yunth4iDMz9N6qtgHOY=', 
    'gAAAAABpLo9E4xnXfdxwniRThJzAluSf7itlXchzC3rJSzt7ejx6Rmwnsz8TxyKLl7NWdkEG3eLS3cex0koLABUt2_EMUue6AQ==', 
    'Welcome@2024',
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
--   Designation           : OTHER
--   Office Name           : None

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
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 98
--   UID                   : 94
--   User Role ID          : 444303467162451

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : Welcome@2024... (SHA256)

================================================================================


SQL queries for the above Record
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
    NULL,
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
    NULL,
    98,
    4,
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
    'gAAAAABpLo9EpAV7G7oGj8A_g1aQxqgue9351fxhVmjI7E7jHqtW3l7oZ1IT7tWNNYh6UyyDtil4Dsy-6yqnwh6BHEy6A8thxq1XkM1tL7ce_QWEdsGi70I=', 
    'gAAAAABpLo9EnPqVmlj-583iDbK-23tmLfwG1_SRg7xelGmExk1YWo0hP9DM-y8h2YBzjvmEhogKt90bYPvhC50ZnwaLpDinuw==', 
    'Welcome@2024',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 531773952, NULL,
    'Gautam Adani',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    98,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162451, 
    94, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 5
-- Total errors: 0