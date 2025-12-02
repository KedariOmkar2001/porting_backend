-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 11:17:23
-- ================================================================================
BEGIN;

================================================================================
-- RECORD #1 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 34679.0
--   Title                 : Mr.
--   First Name            : Devi 
--   Middle Name           : N/A
--   Last Name             : Ram
--   Full Name             : Devi Ram 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : EXECUTIVE ENGINEER
--   Office Name           : nan

-- DATES FROM EXCEL:
--   Date of Joining       : 1992-09-05 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-04-03 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : drchauhan717@gmail.com
--   Contact Number        : 9418045382.0
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
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Devi Ram  (34679)
-- Employee ID: 94 | UID: 90 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    94,
    '34679',
    'Mr.',
    'Devi',
    NULL,
    'Ram',
    'Devi Ram',
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
    'gAAAAABpLn1rpZ4qdD8r4g4r0JH5WF10_PA9wXiWIhG8_20jKTgfpv8_L8AsbM4bTOFjGbihXWTuP7q6Tm0JYLIpUH9yzVwg6-D-aqAEFrA7y9EOLLX8EwA=', 
    'gAAAAABpLn1rn3lvXHe7ZQJSfMNvJdpZBqbKPk8tl7cBdxYO5z1Svm1EuYi2vQ0zBw9iu5dbiLJqk02ff1rbH6cjt9gc8it-Fg==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-04-03', NULL,
    NOW(), 531773952, NULL,
    'Devi Ram',
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
--   Employee Number       : 11425.0
--   Title                 : Mr.
--   First Name            : Ram 
--   Middle Name           : Kumar 
--   Last Name             : Sharma 
--   Full Name             : Ram Kumar Sharma 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : ASSISTANT ENGINEER
--   Office Name           : nan

-- DATES FROM EXCEL:
--   Date of Joining       : 2007-07-18 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-08-05 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : rksharma7273@gmial.com 
--   Contact Number        : 9805181437.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 2
--   Office ID             : NOT FOUND
--   Role ID               : 120882432

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 95
--   UID                   : 91
--   User Role ID          : 444303467162448

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Ram Kumar Sharma  (11425)
-- Employee ID: 95 | UID: 91 | User Role ID: 120882432
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    95,
    '11425',
    'Mr.',
    'Ram',
    'Kumar',
    'Sharma',
    'Ram Kumar Sharma',
    NULL,
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
    NULL,
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
    'gAAAAABpLn1r2Dm2ejJMkGlsfd3cMLzEwn2JkAJDCONNC9JOBaetx1mudHdY1YKr2rLp_cY81NmaX_a_MuNPXaYB88PuS1mrlJEqNr5U5Arkxm2Bjpj9h4E=', 
    'gAAAAABpLn1rXfE7JuqFNQDsWDSi8YGPmsFwG-4E3ta_q3HEjIF8h2-Y9btGxjLWXgjQBZ1BHMhSvgQVSMrWck3IcZ-GNAil3A==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-08-05', NULL,
    NOW(), 531773952, NULL,
    'Ram Kumar Sharma',
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
    NULL, 
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
--   Employee Number       : 45354.0
--   Title                 : Mr.
--   First Name            : Sushil
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Sushil Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : DIVISIONAL ACCOUNTANT OFFICER
--   Office Name           : EXECUTIVE ENGINEER NERCHOWK DIVISION

-- DATES FROM EXCEL:
--   Date of Joining       : 2004-12-20 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2025-10-18 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : skdao_pwd@yahoo.co.in 
--   Contact Number        : 9418211502.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 6
--   Office ID             : 349
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 96
--   UID                   : 92
--   User Role ID          : 444303467162449

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Sushil Kumar  (45354)
-- Employee ID: 96 | UID: 92 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    96,
    '45354',
    'Mr.',
    'Sushil',
    NULL,
    'Kumar',
    'Sushil Kumar',
    349,
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
    349,
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
    'gAAAAABpLn1rzNUzmqWDsFqUY6lZtXb10TDahpU9QBzfTHdovheA-I9XWeERZdCgTVb_7IbjlJh10JRVtkGDv-zfQoaQ_oCvqdm8h4KyNcTwV1QRH5F6jLo=', 
    'gAAAAABpLn1rSvS8FQEBFtzpkEN4me4AeXLDLX3mIPypuxJXd-O9VCIegWI4O5WGugCSilUBeBpVz7r1G704CYrWmYFWSiBJ9A==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2025-10-18', NULL,
    NOW(), 531773952, NULL,
    'Sushil Kumar',
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
    349, 
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
--   Employee Number       : 31331.0
--   Title                 : Mr.
--   First Name            : Vijay 
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Vijay Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : SUPERINTENDENT
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 1992-12-30 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-08-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : vijay79888@gmail.com
--   Contact Number        : 9816300888.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 250433797
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 97
--   UID                   : 93
--   User Role ID          : 444303467162450

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Vijay Kumar  (31331)
-- Employee ID: 97 | UID: 93 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    97,
    '31331',
    'Mr.',
    'Vijay',
    NULL,
    'Kumar',
    'Vijay Kumar',
    NULL,
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
    NULL,
    97,
    250433797,
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
    'gAAAAABpLn1rzldLk2Y4o7IjCMMgE2vegAJ_iE7UQ2Aks016OeUNwKBpdRSFpQJcYhzKYM-doM-v_01cbM9Pd9VHXGn-Q4dawCyPD-B_zY6YSuTSdPT2CuQ=', 
    'gAAAAABpLn1rcRgRJ_yVODCQj3LnKo5cfMtvOgXr2kmFfFzf-PPSUboAEoD8HF43GDRv5Phjt7owRlIY0DQP7BCC3oDHyK63VA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-08-01', NULL,
    NOW(), 531773952, NULL,
    'Vijay Kumar',
    'SUPERINTENDENT',
    'HPPWD',
    531802112,
    250433797,
    97,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162450, 
    93, 
    None, 
    NULL, 
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
--   Employee Number       : 12697.0
--   Title                 : Mr.
--   First Name            : Lokesh 
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Lokesh Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2000-09-18 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-03-16 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : lokeshsen68641@gmail.com 
--   Contact Number        : 9816368641.0
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
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Lokesh Kumar  (12697)
-- Employee ID: 98 | UID: 94 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    98,
    '12697',
    'Mr.',
    'Lokesh',
    NULL,
    'Kumar',
    'Lokesh Kumar',
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
    'gAAAAABpLn1rT33r-T2KuR0O37LijkbMGbCKKcln9cY0oy-K28-h4YdjY0Hr65TSBpdOty2L1yGKHvVGraLLRC1JCDfj-9rIt_6KQNLXRcLpeh5OV30S7Uc=', 
    'gAAAAABpLn1r3sUrQMYdFJgt-89kNyPsPEfiHrg7U4CUAKVrXiuN_2zX9lANcekEeHAhQHWFkUFYTe8HL5vtWS4wiOORxN7QxA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 531773952, NULL,
    'Lokesh Kumar',
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

================================================================================
-- RECORD #6 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 51278.0
--   Title                 : Mr.
--   First Name            : Ravi 
--   Middle Name           : N/A
--   Last Name             : Thakur 
--   Full Name             : Ravi Thakur 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2017-10-06 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2019-05-29 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : ravijavatechie@gmail.com
--   Contact Number        : 7650095559.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 99
--   UID                   : 95
--   User Role ID          : 444303467162452

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Ravi Thakur  (51278)
-- Employee ID: 99 | UID: 95 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    99,
    '51278',
    'Mr.',
    'Ravi',
    NULL,
    'Thakur',
    'Ravi Thakur',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2017-10-06',
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
    99,
    4,
    'N',
    '2019-05-29',
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
    95, 
    '51278', 
    'gAAAAABpLn1rCRjmtkh83aBcInKZsqFz3p92tp6oHHdSAsR5CPX1HUOV5_fCIUDshXYiNUp600aSqP4zWBkEZ1Kt1zbyxsL6S6zSMf3HE3JiBilu9K4cDE0=', 
    'gAAAAABpLn1r_MAFlsewUaF5b5UH15uLtX_PxjGIZ2FHDfh9a9N0E2y62DFQJnZfcH4WI3UXy3AODutqGv0j8LyO_0efjH3xTg==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2019-05-29', NULL,
    NOW(), 531773952, NULL,
    'Ravi Thakur',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    99,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162452, 
    95, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #7 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 57249.0
--   Title                 : Mr.
--   First Name            : Prem 
--   Middle Name           : N/A
--   Last Name             : Chand 
--   Full Name             : Prem Chand 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2024-09-18 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-09-18 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : prem16910@gmail.com
--   Contact Number        : 7018698566.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 100
--   UID                   : 96
--   User Role ID          : 444303467162453

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Prem Chand  (57249)
-- Employee ID: 100 | UID: 96 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    100,
    '57249',
    'Mr.',
    'Prem',
    NULL,
    'Chand',
    'Prem Chand',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2024-09-18',
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
    100,
    4,
    'N',
    '2024-09-18',
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
    96, 
    '57249', 
    'gAAAAABpLn1sU0zJB5MRzqfaaV2b5GxuUITW8BHU_gWd3CMzamNRSOg1MgHSm3ntAtVxa6GmKLMcJBR3-wdvOA5pIGLHDGwsdkIjxabB7AZ4P5ocYi9J43Q=', 
    'gAAAAABpLn1sSDGCwyrA6E7tkp7jykywJsCfUSjTU4xk-X70_3_Pnuwj2t7pMTCi5X2Cb9Y0LNeT9nOcaQlC0pEdCp1hzo8Luw==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-09-18', NULL,
    NOW(), 531773952, NULL,
    'Prem Chand',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    100,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162453, 
    96, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #8 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 37720.0
--   Title                 : Mr.
--   First Name            : Raj 
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Raj Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2000-01-17 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-09-06 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : rajkumarthakur6000@gmail.com
--   Contact Number        : 7807800366.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 101
--   UID                   : 97
--   User Role ID          : 444303467162454

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Raj Kumar  (37720)
-- Employee ID: 101 | UID: 97 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    101,
    '37720',
    'Mr.',
    'Raj',
    NULL,
    'Kumar',
    'Raj Kumar',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2000-01-17',
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
    101,
    4,
    'N',
    '2023-09-06',
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
    97, 
    '37720', 
    'gAAAAABpLn1sGiyoHqqdWoF27oDDlmkW38AAVX_-NQEkpuC_tddXUKaTjzrqRJdjZujD9xT3Nw4Yt4TEQhJdL-K4VXnAloTY9_jbak-3vmUJQ7KrD_8zt-Y=', 
    'gAAAAABpLn1sC7saiBLMkJs_FGVh4nMI9JQYZt89JvB9R7ejiRHLuQYQQ_T5TCKMEqUOdinXlqkTS092Dmw1d-o7gF_df6HA5Q==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-09-06', NULL,
    NOW(), 531773952, NULL,
    'Raj Kumar',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    101,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162454, 
    97, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #9 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 10173.0
--   Title                 : Ms.
--   First Name            : Maya 
--   Middle Name           : N/A
--   Last Name             : Devi
--   Full Name             : Maya Devi 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2000-05-11 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2022-08-08 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : mayachoudhary4121974@gmail.com
--   Contact Number        : 7018422904.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 102
--   UID                   : 98
--   User Role ID          : 444303467162455

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Maya Devi  (10173)
-- Employee ID: 102 | UID: 98 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    102,
    '10173',
    'Ms.',
    'Maya',
    NULL,
    'Devi',
    'Maya Devi',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2000-05-11',
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
    102,
    4,
    'N',
    '2022-08-08',
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
    98, 
    '10173', 
    'gAAAAABpLn1sp6m1USFVLz7tVicnvwzgSEcqLwB9Xa-93mSsjeZKvZoxpCTlDcJfhn3tMtAEU6gdfBn8WJLpTLJ0AE5uarYy3Bc79ghe_PUJPXz61uZ3RXw=', 
    'gAAAAABpLn1stBOmxmVg0T-JGf5HfCLnmIUOZIczaMoir59hKDr3iTV3vC04747fbsdgWvshG406nVvOtN0xel-lhHK5gE2CjA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2022-08-08', NULL,
    NOW(), 531773952, NULL,
    'Maya Devi',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    102,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162455, 
    98, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #10 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 38403.0
--   Title                 : Mr.
--   First Name            : Sunku 
--   Middle Name           : N/A
--   Last Name             : Ram 
--   Full Name             : Sunku Ram 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2004-01-01 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-11-06 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : sunkuram501@gmail.com
--   Contact Number        : 9015027597.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 103
--   UID                   : 99
--   User Role ID          : 444303467162456

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Sunku Ram  (38403)
-- Employee ID: 103 | UID: 99 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    103,
    '38403',
    'Mr.',
    'Sunku',
    NULL,
    'Ram',
    'Sunku Ram',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2004-01-01',
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
    103,
    4,
    'N',
    '2023-11-06',
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
    99, 
    '38403', 
    'gAAAAABpLn1srRZ9tm3rAm-avP_8KhW4vSwh52v1hRST0kNi4PXlMGZI8Dwg7gFSAyaeTynqH9Ny8SlzNRey4j-XoyPe7uR_Hfuf61kidKOVM4yt9_FvdF0=', 
    'gAAAAABpLn1snAp0CSg5tEpp9VdtUfyJCURnPhVHcwYV7_b5FzzxTJYgQeowNh_EXlzoUoSWPZ9ttpuIz9fkVxSny049mpRnMQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-11-06', NULL,
    NOW(), 531773952, NULL,
    'Sunku Ram',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    103,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162456, 
    99, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #11 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 51712.0
--   Title                 : Ms.
--   First Name            : Priyanka 
--   Middle Name           : N/A
--   Last Name             : -
--   Full Name             : Priyanka 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : nan

-- DATES FROM EXCEL:
--   Date of Joining       : 2017-09-07 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-07-08 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : priya733766@gmail.com
--   Contact Number        : 9905700023.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : NOT FOUND
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 104
--   UID                   : 100
--   User Role ID          : 444303467162457

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Priyanka  (51712)
-- Employee ID: 104 | UID: 100 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    104,
    '51712',
    'Ms.',
    'Priyanka',
    NULL,
    '-',
    'Priyanka',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2017-09-07',
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
    104,
    1,
    'N',
    '2024-07-08',
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
    100, 
    '51712', 
    'gAAAAABpLn1s-x-bhIvPk2xJsr1QdCU6qcE-Nkf1t_isNG7mA1jeIkHtUl9zxZ4_BPSjZn9L_zVnctAsSvsdfdjfMdaR2ZFtQuom2EmgBw1LCsYRttOAZRo=', 
    'gAAAAABpLn1siZy0il0yfc03k2LG7WnblpIbZfytFScGvtOxsLYDTWZJGadsOBnML8jVDm16cPNfGqLUlMk3HQfNIgPMSbJIpg==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-07-08', NULL,
    NOW(), 531773952, NULL,
    'Priyanka',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    104,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162457, 
    100, 
    120878848, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #12 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 57252.0
--   Title                 : Ms.
--   First Name            : Priyanka 
--   Middle Name           : N/A
--   Last Name             : Kumari 
--   Full Name             : Priyanka Kumari 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR DRAUGHTSMAN
--   Office Name           : EXECUTIVE ENGINEER NERCHOWK DIVISION

-- DATES FROM EXCEL:
--   Date of Joining       : 2024-11-02 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-11-02 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : pk1032150@gmail.com
--   Contact Number        : 9816770097.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : NOT FOUND
--   Office ID             : 349
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 105
--   UID                   : 101
--   User Role ID          : 444303467162458

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Priyanka Kumari  (57252)
-- Employee ID: 105 | UID: 101 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    105,
    '57252',
    'Ms.',
    'Priyanka',
    NULL,
    'Kumari',
    'Priyanka Kumari',
    349,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2024-11-02',
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
    349,
    105,
    NULL,
    'N',
    '2024-11-02',
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
    101, 
    '57252', 
    'gAAAAABpLn1s2br0saPRYbUjT6t4QYCRScVxaCAvXyCOhe14dJo5Ym_ekUrYkju5Os_GO_EhJCH98Ll_sH54bUQtjyPwtY_v0BuSG_zipfj2gAb31qE__D4=', 
    'gAAAAABpLn1sbhIvIXCHds_b91zGzqcu36ISCVt_8rPpITaRhyU8dk_hprQLZV8fZ_KXj9n7vjvfXTinE20OvXc_mXrF9MgXbA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-11-02', NULL,
    NOW(), 531773952, NULL,
    'Priyanka Kumari',
    'JUNIOR DRAUGHTSMAN',
    'HPPWD',
    531802112,
    NULL,
    105,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162458, 
    101, 
    None, 
    349, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #13 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 56149.0
--   Title                 : Mr.
--   First Name            : Anshul 
--   Middle Name           : N/A
--   Last Name             : Chaudhary
--   Full Name             : Anshul Chaudhary

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : ASSISTANT ENGINEER
--   Office Name           : CHAKKAR SUB DIVISION

-- DATES FROM EXCEL:
--   Date of Joining       : 2017-02-15 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2025-05-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : chaudharyanshul005@gmail.com
--   Contact Number        : 9418155102.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 2
--   Office ID             : 380
--   Role ID               : 120882432

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 106
--   UID                   : 102
--   User Role ID          : 444303467162459

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Anshul Chaudhary (56149)
-- Employee ID: 106 | UID: 102 | User Role ID: 120882432
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    106,
    '56149',
    'Mr.',
    'Anshul',
    NULL,
    'Chaudhary',
    'Anshul Chaudhary',
    380,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2017-02-15',
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
    380,
    106,
    2,
    'N',
    '2025-05-01',
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
    102, 
    '56149', 
    'gAAAAABpLn1s0A58cv6GPlYe3Sy5kn22LA5nD3CRsmVNX63Aw2DB0Q4E6hCmx9MRI36YVqcpCTJSy4iH_VFX6mro1Kr2uDPGvurYFzJiT2B7u6_eMTDmFr8=', 
    'gAAAAABpLn1scAZZ5Sf47mnE4NVSnIzfqMloZ-TAF6x0xXLoTRxfWPyvLSyPHMEyMEhMJqgH17U3OwFJbxWC7fkl-c-XODPgDA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2025-05-01', NULL,
    NOW(), 531773952, NULL,
    'Anshul Chaudhary',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    106,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162459, 
    102, 
    120882432, 
    380, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #14 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 29836.0
--   Title                 : Mr.
--   First Name            : Lekh 
--   Middle Name           : N/A
--   Last Name             : Raj 
--   Full Name             : Lekh Raj 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : nan

-- DATES FROM EXCEL:
--   Date of Joining       : 1999-12-17 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-09-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : lekhrajt980@gmail.com
--   Contact Number        : 9418036954.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : NOT FOUND
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 107
--   UID                   : 103
--   User Role ID          : 444303467162460

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Lekh Raj  (29836)
-- Employee ID: 107 | UID: 103 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    107,
    '29836',
    'Mr.',
    'Lekh',
    NULL,
    'Raj',
    'Lekh Raj',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '1999-12-17',
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
    107,
    1,
    'N',
    '2023-09-01',
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
    103, 
    '29836', 
    'gAAAAABpLn1sO-hZMcRRa0VUCXE9LlWKRP79gznOju8YqitcZhD6xliEDeinhHDdsPxDySx6vqnq_EMLXVh_uvKsbv6jh2RjeUcoPlSQXGPZziTlJqb0tpI=', 
    'gAAAAABpLn1sPt9Avb_xcnD-5sIqYMgMzrfOGu8mb5ovm2PN7M0UkrwFtXyjd6KryhkT02maMNYA5Y8phLqW3UH92M2maNyeJQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-09-01', NULL,
    NOW(), 531773952, NULL,
    'Lekh Raj',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    107,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162460, 
    103, 
    120878848, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #15 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 13281.0
--   Title                 : Mr.
--   First Name            : Sahil 
--   Middle Name           : N/A
--   Last Name             : Thakur 
--   Full Name             : Sahil Thakur 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2013-09-28 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-05-09 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : sahilthakurg@gmail.com
--   Contact Number        : 9418473774.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 108
--   UID                   : 104
--   User Role ID          : 444303467162461

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Sahil Thakur  (13281)
-- Employee ID: 108 | UID: 104 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    108,
    '13281',
    'Mr.',
    'Sahil',
    NULL,
    'Thakur',
    'Sahil Thakur',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2013-09-28',
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
    108,
    4,
    'N',
    '2023-05-09',
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
    104, 
    '13281', 
    'gAAAAABpLn1sSFrqWiIANk-kQSH1VYCA-eY-uLVgdYzYZQr1ojIijMVLc37Hq2oLJzlrHlycP1KZ7zIDeiVLAt78IRZaxT7eOgZClCV4xmxfZN4haHaWNjk=', 
    'gAAAAABpLn1sUT9HtMoG6i0uZDaidsVTQ1SUe6uGDu9o39MvVxHomiIqMa1jcXIkaiUb8udSVhQvxxkv-BgV-LK_UhIa-JmKig==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-05-09', NULL,
    NOW(), 531773952, NULL,
    'Sahil Thakur',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    108,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162461, 
    104, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #16 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 53977.0
--   Title                 : Mr.
--   First Name            : Arjun 
--   Middle Name           : N/A
--   Last Name             : Katoch
--   Full Name             : Arjun Katoch 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : GAGAL SECTION

-- DATES FROM EXCEL:
--   Date of Joining       : 2017-08-29 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-03-05 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : arjunkatoch23@gmail.com
--   Contact Number        : 7018252897.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 385
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 109
--   UID                   : 105
--   User Role ID          : 444303467162462

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Arjun Katoch  (53977)
-- Employee ID: 109 | UID: 105 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    109,
    '53977',
    'Mr.',
    'Arjun',
    NULL,
    'Katoch',
    'Arjun Katoch',
    385,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2017-08-29',
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
    385,
    109,
    1,
    'N',
    '2024-03-05',
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
    105, 
    '53977', 
    'gAAAAABpLn1sFedUWtDliaXCsbnbOWAb1Obd2Ou6IH0hM4QcJjM8g_QcrV3P3PkPrp5-TkgQAliqPxYd-rSA4yeksEc98IF-f_oedr8m6acQuzizgG6sY7U=', 
    'gAAAAABpLn1sgMM2cqIeiYgr5Gc4s6PgsB5IcqsE-dIFmvyiKTDQrx_vThUGCdpKZwynrK_s_mEOlNYLdQmNPgifI8CZV4rkjw==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-03-05', NULL,
    NOW(), 531773952, NULL,
    'Arjun Katoch',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    109,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162462, 
    105, 
    120878848, 
    385, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #17 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 55029.0
--   Title                 : Mr.
--   First Name            : Jitender 
--   Middle Name           : N/A
--   Last Name             : Thakur 
--   Full Name             : Jitender Thakur

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : RATTI SECTION

-- DATES FROM EXCEL:
--   Date of Joining       : 2016-02-23 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2022-09-09 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : jitenderthkr27@gmail.com
--   Contact Number        : 9418473783.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 384
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 110
--   UID                   : 106
--   User Role ID          : 444303467162463

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Jitender Thakur (55029)
-- Employee ID: 110 | UID: 106 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    110,
    '55029',
    'Mr.',
    'Jitender',
    NULL,
    'Thakur',
    'Jitender Thakur',
    384,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2016-02-23',
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
    384,
    110,
    1,
    'N',
    '2022-09-09',
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
    106, 
    '55029', 
    'gAAAAABpLn1s-vBWMO9Nuyj3sBC3HZq2Jfs-nCnJOPRs6XbfVs_agUoWGMpp3sB2l2HMrXLYlFzeeFsAdQryFaZYbgwOHBe44B6jxt9TfrY7qVN9b7V-fd0=', 
    'gAAAAABpLn1sVOq3gFWdt5DQCdJbC2tfYWuGd-TpsjoI8BuM5Qs37Qw194PoQl1SnFEUS1f4Nrz1v-sle2iO7TlTsnIlVUYYdA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2022-09-09', NULL,
    NOW(), 531773952, NULL,
    'Jitender Thakur',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    110,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162463, 
    106, 
    120878848, 
    384, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #18 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 45707.0
--   Title                 : Mr.
--   First Name            : Satish 
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Satish Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : ASSISTANT ENGINEER
--   Office Name           : SLBSGMC & H NERCHOWK SUB DIVISION

-- DATES FROM EXCEL:
--   Date of Joining       : 1999-04-01 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2023-11-28 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : satishsharma2865@gmail.com
--   Contact Number        : 8219189039.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 2
--   Office ID             : 382
--   Role ID               : 120882432

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 111
--   UID                   : 107
--   User Role ID          : 444303467162464

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Satish Kumar  (45707)
-- Employee ID: 111 | UID: 107 | User Role ID: 120882432
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    111,
    '45707',
    'Mr.',
    'Satish',
    NULL,
    'Kumar',
    'Satish Kumar',
    382,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '1999-04-01',
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
    382,
    111,
    2,
    'N',
    '2023-11-28',
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
    107, 
    '45707', 
    'gAAAAABpLn1suzwIvegHtL7rYHnUmgw0pGdP-lTTQtpc4-YJVMOnmAbpS79lfxrj971PV1uO9CUdZDiJmlwStf45yN23J3UpWJQLtj2vUF0D-2zQ62WJqgk=', 
    'gAAAAABpLn1sW1WBv3ubsQSarW9FTEKLtTRHawmOlaCHF3rM7_Jnd0_MpGniYp_SFsJWFYGRZcJAN6MjYL1qqa3JGESDcF-DVQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2023-11-28', NULL,
    NOW(), 531773952, NULL,
    'Satish Kumar',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    111,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162464, 
    107, 
    120882432, 
    382, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #19 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 37866.0
--   Title                 : Mr.
--   First Name            : Khem 
--   Middle Name           : N/A
--   Last Name             : Chand 
--   Full Name             : Khem Chand 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : SECTION-I

-- DATES FROM EXCEL:
--   Date of Joining       : 2007-01-09 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-08-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : khemchand63139@gmail.com
--   Contact Number        : 9817263139.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 389
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 112
--   UID                   : 108
--   User Role ID          : 444303467162465

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Khem Chand  (37866)
-- Employee ID: 112 | UID: 108 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    112,
    '37866',
    'Mr.',
    'Khem',
    NULL,
    'Chand',
    'Khem Chand',
    389,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2007-01-09',
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
    389,
    112,
    1,
    'N',
    '2024-08-01',
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
    108, 
    '37866', 
    'gAAAAABpLn1sIncXI4ZEyRHJrjrK-Kxjzza8Y65AOeVTdaGaBKaqL6gaUpGPWgrOeATVxtsSXQU2TMJmDBUGUD6_vi_bU8XLKtlXFwdVlKXVfJYc1jwHEPc=', 
    'gAAAAABpLn1sE1XssweRVl5uV5cCHNTGYk36580cjQGEZBArswsz2ELtfHmvkqbJ9TjHM85j0LccxzCf8IS4Zrc-Bu3RD_hQyw==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-08-01', NULL,
    NOW(), 531773952, NULL,
    'Khem Chand',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    112,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162465, 
    108, 
    120878848, 
    389, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #20 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 54181.0
--   Title                 : Mr.
--   First Name            : Bharat 
--   Middle Name           : Bhushan
--   Last Name             : Gupta
--   Full Name             : Bharat Bhushan Gupta 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : SECTION-II

-- DATES FROM EXCEL:
--   Date of Joining       : 2012-05-03 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-02-21 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : bharatbhushang268@gmail.com
--   Contact Number        : 9418513208.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 390
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 113
--   UID                   : 109
--   User Role ID          : 444303467162466

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Bharat Bhushan Gupta  (54181)
-- Employee ID: 113 | UID: 109 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    113,
    '54181',
    'Mr.',
    'Bharat',
    'Bhushan',
    'Gupta',
    'Bharat Bhushan Gupta',
    390,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2012-05-03',
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
    390,
    113,
    1,
    'N',
    '2024-02-21',
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
    109, 
    '54181', 
    'gAAAAABpLn1s78nX3SRCIGEYwbgTzhspyeUczJtrVklTuJvQXsesC0M7gYOSLQnQ4Vcg4w5CuWDPbQQMDzGvMJFHncikS9zXUn-uDAKoTwsGxT3Zgn6P0bc=', 
    'gAAAAABpLn1sNmkSnbmIdC34OXgGYPZQx_4zB13cmOFcenDXHOD600a_5s_IGLpVUoGTgRPTJLZSU1r-udDJIo24vQOG223OHA==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-02-21', NULL,
    NOW(), 531773952, NULL,
    'Bharat Bhushan Gupta',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    113,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162466, 
    109, 
    120878848, 
    390, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #21 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 52217.0
--   Title                 : Mr.
--   First Name            : Yugal 
--   Middle Name           : N/A
--   Last Name             : Kishore
--   Full Name             : Yugal Kishore

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : ASSISTANT ENGINEER
--   Office Name           : REWALSAR SUB DIVISION

-- DATES FROM EXCEL:
--   Date of Joining       : 2015-11-09 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2025-07-01 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : thakurykt130@gmail.com
--   Contact Number        : 8219185511.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 2
--   Office ID             : 381
--   Role ID               : 120882432

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 114
--   UID                   : 110
--   User Role ID          : 444303467162467

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Yugal Kishore (52217)
-- Employee ID: 114 | UID: 110 | User Role ID: 120882432
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    114,
    '52217',
    'Mr.',
    'Yugal',
    NULL,
    'Kishore',
    'Yugal Kishore',
    381,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2015-11-09',
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
    381,
    114,
    2,
    'N',
    '2025-07-01',
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
    110, 
    '52217', 
    'gAAAAABpLn1sZ9p9I8SYEHuJu9bLs9JHO6mOy4-dOEWJ4X4lzXbnh1_f533gvQXWEu5prKamJohqs5ImMDzoc0gvHOS46KiTSm0lWfofduWIrUnpHb_5gAY=', 
    'gAAAAABpLn1sbX0PayoYu3GsbuZC_KVGHEmzSKew0GNgUEWsKs0nzzzUO0Q90Vi9qVfNWRP9LZ1nvtzKF4DPf7-3WvaWY3YMoQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2025-07-01', NULL,
    NOW(), 531773952, NULL,
    'Yugal Kishore',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    114,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162467, 
    110, 
    120882432, 
    381, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #22 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 50434.0
--   Title                 : Mr.
--   First Name            : Dhameshwar 
--   Middle Name           : N/A
--   Last Name             : Ram 
--   Full Name             : Dhameshwar Ram 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : OTHER
--   Office Name           : None

-- DATES FROM EXCEL:
--   Date of Joining       : 2012-09-19 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-08-21 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : dhameshwar1981@gmail.com
--   Contact Number        : 9816966522.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 4
--   Office ID             : NOT FOUND
--   Role ID               : NOT FOUND

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 115
--   UID                   : 111
--   User Role ID          : 444303467162468

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Dhameshwar Ram  (50434)
-- Employee ID: 115 | UID: 111 | User Role ID: None
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    115,
    '50434',
    'Mr.',
    'Dhameshwar',
    NULL,
    'Ram',
    'Dhameshwar Ram',
    NULL,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2012-09-19',
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
    115,
    4,
    'N',
    '2024-08-21',
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
    111, 
    '50434', 
    'gAAAAABpLn1smNN4-BM7c4VWC2-z43CrSZRzpNQ3hQulqWrLWTS0YL2_fvJ4X795l0wQch78XO9DVWxT0kNRz3cJ5XGd22h7vbRXCSBBuGVWJjxGFyXsBIY=', 
    'gAAAAABpLn1sIHumxrEZKWmP23YLT7wEtQr3Smotixv3D62tXYKfy9ulXfkBkf0wTsvtocR6qxUUeEmPOV0LyMVOV1TetbjuOQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-08-21', NULL,
    NOW(), 531773952, NULL,
    'Dhameshwar Ram',
    'OTHER',
    'HPPWD',
    531802112,
    4,
    115,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162468, 
    111, 
    None, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #23 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 50542.0
--   Title                 : Mr.
--   First Name            : Suresh 
--   Middle Name           : N/A
--   Last Name             : Kumar
--   Full Name             : Suresh Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : SARDHWAR SECTION

-- DATES FROM EXCEL:
--   Date of Joining       : 2013-09-30 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2022-06-29 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : suresh.verma05@gmail.com 
--   Contact Number        : 9418367892.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 386
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 116
--   UID                   : 112
--   User Role ID          : 444303467162469

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Suresh Kumar  (50542)
-- Employee ID: 116 | UID: 112 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    116,
    '50542',
    'Mr.',
    'Suresh',
    NULL,
    'Kumar',
    'Suresh Kumar',
    386,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2013-09-30',
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
    386,
    116,
    1,
    'N',
    '2022-06-29',
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
    112, 
    '50542', 
    'gAAAAABpLn1swBO3CtONzKfvlLDbCIRjfC8_DDYN4SGNwdkF1G3L3-Sta0WVN1g9_i3aOyc7A4aKIZ211zenNTuVo-pmjUHfXmWCa5l9zob0JDg8Hylpxgw=', 
    'gAAAAABpLn1sxYjXZFUKqRtJ_aAQIdPHhFC_r3VFYDHjVV9wQUkYhWhFaL0kG8Gd1CnEJIwQ3WIABO6OHsxtjl8i_gkT1JUYvQ==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2022-06-29', NULL,
    NOW(), 531773952, NULL,
    'Suresh Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    116,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162469, 
    112, 
    120878848, 
    386, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #24 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 38013.0
--   Title                 : Mr.
--   First Name            : Manoj 
--   Middle Name           : N/A
--   Last Name             : Kumar 
--   Full Name             : Manoj Kumar 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : REWALSAR SECTION

-- DATES FROM EXCEL:
--   Date of Joining       : 1994-07-21 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-07-12 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : manoj210sharma@gmail.com
--   Contact Number        : 9317906516.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 387
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 117
--   UID                   : 113
--   User Role ID          : 444303467162470

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Manoj Kumar  (38013)
-- Employee ID: 117 | UID: 113 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    117,
    '38013',
    'Mr.',
    'Manoj',
    NULL,
    'Kumar',
    'Manoj Kumar',
    387,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '1994-07-21',
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
    387,
    117,
    1,
    'N',
    '2024-07-12',
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
    113, 
    '38013', 
    'gAAAAABpLn1socripAVv7-JtLDHrUfP4N3jlen8iH1Rn8DQcvR_Q6STmsmVRRj3gQYKfAMOhEs4_Y-C3o-6rEe4OVkW1JkB19uRsHgY6dGFk4sKs1ihNcHk=', 
    'gAAAAABpLn1sPsEgaDCSOB1PK2xHGzE1GVUob_JFDb-fwgvdzDhrvlMQclsZRWEhslQyX1YoW6PdaHFnnAFAc2rJw4bN8U4Xxg==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-07-12', NULL,
    NOW(), 531773952, NULL,
    'Manoj Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    117,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162470, 
    113, 
    120878848, 
    387, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

================================================================================
-- RECORD #25 - EXCEL DATA PREVIEW
================================================================================

-- BASIC INFORMATION FROM EXCEL:
--   Employee Number       : 14559.0
--   Title                 : Mr.
--   First Name            : Pushp
--   Middle Name           : N/A
--   Last Name             : Raj 
--   Full Name             : Pushp Raj 

-- DESIGNATION & OFFICE FROM EXCEL:
--   Designation           : JUNIOR ENGINEER
--   Office Name           : LEDA SECTION

-- DATES FROM EXCEL:
--   Date of Joining       : 2001-01-01 00:00:00
--   Date of Relieving     : N/A
--   Period From           : 2024-03-16 00:00:00
--   Period Till           : N/A

-- CONTACT INFORMATION FROM EXCEL:
--   Email                 : pushapraj72607@gmail.com
--   Contact Number        : 9418272607.0
--   Company/Organization  : HPPWD

-- MAPPED/RESOLVED IDs:
--   Designation ID        : 1
--   Office ID             : 388
--   Role ID               : 120878848

-- GENERATED IDs (Auto-incrementing):
--   Employee ID           : 118
--   UID                   : 114
--   User Role ID          : 444303467162471

-- SECURITY:
--   Email Encrypted       : YES
--   Phone Encrypted       : YES
--   Password (Hashed)     : $2a$10$E9.YM/JWMio2o... (SHA256)

================================================================================


================================================================================
-- Employee: Pushp Raj  (14559)
-- Employee ID: 118 | UID: 114 | User Role ID: 120878848
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    118,
    '14559',
    'Mr.',
    'Pushp',
    NULL,
    'Raj',
    'Pushp Raj',
    388,
    'Y', 531773952, NOW(), 531802112,
    'A',
    '2001-01-01',
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
    388,
    118,
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
    114, 
    '14559', 
    'gAAAAABpLn1sb87TsKHOfO0WxprZjEalLpWTGq-fBpj7mN04VNVMNxnQdKKsDBC9eq8eifP56OqtBZ8pFsbgeNjbRggkUU1TH74-_D_1C4An5SoW4juLSbU=', 
    'gAAAAABpLn1seEMD-l8W6wRRS9JX1wAUNf-7tEHATVwaCzcdwcGmJwhBzDMjF6EAsPCCsoVuRCd0raVRRcEgtgnYbcNzq2KCog==', 
    '$2a$10$E9.YM/JWMio2o.EmsAiSeOPci1yOiuxsq7rrMi2lqxMq8WCTSQjya',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 531773952, NULL,
    'Pushp Raj',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    118,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162471, 
    114, 
    120878848, 
    388, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 25
-- Total errors: 0