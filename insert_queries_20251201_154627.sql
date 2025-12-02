-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 15:46:27
-- ================================================================================
BEGIN;


================================================================================
-- Employee: Ram Kumar Sharma  (11425.0)
-- Employee ID: 94 | UID: 90 | User Role ID: 444303467162447
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    94,
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
    94,
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
    90, 
    '11425', 
    'gAAAAABpLWr739PZhC5kPgX2gdlbcHE02CUYUzJNvrmP3DQQzVsyiqqJ3ahKbN1aoVLmvQj_poTMaE-TbdUPMMbYsz0dij4_MXZzdnwjbgIx-DpTRmOBPpE=', 
    'gAAAAABpLWr7Qqz1GBqhWYju2NK0XIHi3rZ9_TTEO5UD7ulDzRKDOwX_eYi1ExT7uS-mNjFru7mz8jhGpPRRPZCDoLNoFNz4Dg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-08-05', NULL,
    NOW(), 531773952, NULL,
    'Ram Kumar Sharma',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    94,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162447, 
    90, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sushil Kumar  (45354.0)
-- Employee ID: 95 | UID: 91 | User Role ID: 444303467162448
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    95,
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
    95,
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
    91, 
    '45354', 
    'gAAAAABpLWr7e2BEwHT4rI1f9QlL57ainPCNY0gJqAMqMnm7aASDiMq2iFT1hWCY_smVxmfyQ7lpoNZ6VS095-hMRw_JMR3sa5a8KhZx03Q_AbS43IAQbcc=', 
    'gAAAAABpLWr7lrUmKiblAeY2mJpaR73eE3tz2gAvU2yxgv8uSXiy25YM8kc00V5g-ilSeG8uI_XRE2u-g7uscyGDD_B_XnAlhw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-10-18', NULL,
    NOW(), 531773952, NULL,
    'Sushil Kumar',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    531802112,
    6,
    95,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162448, 
    91, 
    532193206, 
    349, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Priyanka  (51712.0)
-- Employee ID: 96 | UID: 92 | User Role ID: 444303467162449
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    96,
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
    96,
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
    92, 
    '51712', 
    'gAAAAABpLWr7_0re1Q0I7LFblTW05rZcipTRmelOnQ3CMpkB8Xu_4go2eJKcTLeybPuEV9vEPUarTY_WkfamqXKvX_Iq4avaZtHaZ6ygcScR8koKuoy6vjY=', 
    'gAAAAABpLWr7zcs-xT2zdw5W-Mcz9gu8dn2ERgSJxBeZEPLn2PzWW7bs4UDGWS0mzcEnoX-u_jDWuzyYS9VJSMtNR5DI0NIo4A==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-07-08', NULL,
    NOW(), 531773952, NULL,
    'Priyanka',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    96,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162449, 
    92, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Priyanka Kumari  (57252.0)
-- Employee ID: 97 | UID: 93 | User Role ID: 444303467162450
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    97,
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
    97,
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
    93, 
    '57252', 
    'gAAAAABpLWr7yge8mk2vUOpDCdb4qIbg-eXVcBkBa56BNd1-qgdGnkuhet6_04glNi8yLp7F5LfV1nAWfbBFuoxXe8AhYDk9bzuat_RqCYKr1Mos03xuxu0=', 
    'gAAAAABpLWr7n9-TC-JIzt_F-NEf8QkstdlHOT5gZ4WebDbjd5GyO8esJDpEhkwu6__hP-WjT9K3qUte3K3jSjn5joc_6KOMGw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-11-02', NULL,
    NOW(), 531773952, NULL,
    'Priyanka Kumari',
    'JUNIOR DRAUGHTSMAN',
    'HPPWD',
    531802112,
    NULL,
    97,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162450, 
    93, 
    532193206, 
    349, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Anshul Chaudhary (56149.0)
-- Employee ID: 98 | UID: 94 | User Role ID: 444303467162451
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    98,
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
    98,
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
    94, 
    '56149', 
    'gAAAAABpLWr7aJL_osr64OoTfP3WBphnz7DfbfeQH52DT3QDoHkg5ISlmwmIg3pyPjXXa8KItw52i0lnNogVNSLthq0VVNIUnObU3ShHE2suET4joj_XVhA=', 
    'gAAAAABpLWr7VRhETrP9JQXFYmXs2MnMBJzePUDeEg8hyir5hdv0r8proUdTiWVSuk2e5__V_zZX55smBeo75-uKmDrLzhtkDg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-05-01', NULL,
    NOW(), 531773952, NULL,
    'Anshul Chaudhary',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    98,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162451, 
    94, 
    532193206, 
    380, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Lekh Raj  (29836.0)
-- Employee ID: 99 | UID: 95 | User Role ID: 444303467162452
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    99,
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
    99,
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
    95, 
    '29836', 
    'gAAAAABpLWr7Tx5kAQK_f4cF1Nhae-pNpfG4E3g6oNOTe5jiZvUVjLEfJ2E9a_GCuvufEtT8z76t6Iq1MugNS76aihirr4yhupxcdYIDsMGwJsdEMItBGsk=', 
    'gAAAAABpLWr7bekBGX7Rki2iymzl5ry3GLX7u-YJ15LgVmEsEbbctI1366y5GDvEAmzWieK5t78yrJhDl23QCKKcD9BH_WeNjQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-09-01', NULL,
    NOW(), 531773952, NULL,
    'Lekh Raj',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    99,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162452, 
    95, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Arjun Katoch  (53977.0)
-- Employee ID: 100 | UID: 96 | User Role ID: 444303467162453
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    100,
    '53977',
    'Mr.',
    'Arjun',
    NULL,
    'Katoch',
    'Arjun Katoch',
    NULL,
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
    NULL,
    100,
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
    96, 
    '53977', 
    'gAAAAABpLWr7C_ATcjIz0znEup2SP15CopCgb47xETxY8L2nkqsbPIZ30A67x9VTNWuTcABBtdvOpZQqWHafBghMRnNa0TsS_C4NzmbpvClWquSu4qJB6HE=', 
    'gAAAAABpLWr7cP6zh9VbpVXJN96XUNTFHdWbWD452jG6F_fqSQ1uQ34Yde78CTvbAI6uyAHlBFLZ55aR4_mHUPrfwO11-cMDHA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-03-05', NULL,
    NOW(), 531773952, NULL,
    'Arjun Katoch',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    100,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162453, 
    96, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Jitender Thakur (55029.0)
-- Employee ID: 101 | UID: 97 | User Role ID: 444303467162454
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    101,
    '55029',
    'Mr.',
    'Jitender',
    NULL,
    'Thakur',
    'Jitender Thakur',
    NULL,
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
    NULL,
    101,
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
    97, 
    '55029', 
    'gAAAAABpLWr7gRgSugQniIW4t-2LCT0xcHin0c4PtrsNAM35n0DKag5FIVieiJQXwcYbztpLFLbyBw74sJTnqKxb8Gslzn6maRWPcGUevNowH7ltfXAbYkg=', 
    'gAAAAABpLWr75SWhajNap7K9SnfhjlKPRFARTTrGtHHwfDsyvLcQxFNIcQbasP-p2Ypa1zxTqGBSUl26oNda4BqqH1AEO-KHwA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2022-09-09', NULL,
    NOW(), 531773952, NULL,
    'Jitender Thakur',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    101,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162454, 
    97, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Satish Kumar  (45707.0)
-- Employee ID: 102 | UID: 98 | User Role ID: 444303467162455
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    102,
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
    102,
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
    98, 
    '45707', 
    'gAAAAABpLWr7LnVj5HwT30p7lb7NLZJ00WpKriBv9JcldhVg2LSaEAjQr6BMWMxvrUNGoGJSMJzxMGpaLivfktmeRX6lvYjbbs9Mp-gPd6998I7SRO_SYUw=', 
    'gAAAAABpLWr74aQHtoyykAqsidyviWRZK-H8j0leZwulf8nlyLpBhSAaJcUi5F-i-x_qnPpQ6XxalHf7Yk9ni35V4HE3aip0aA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-11-28', NULL,
    NOW(), 531773952, NULL,
    'Satish Kumar',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    102,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162455, 
    98, 
    532193206, 
    382, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Khem Chand  (37866.0)
-- Employee ID: 103 | UID: 99 | User Role ID: 444303467162456
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    103,
    '37866',
    'Mr.',
    'Khem',
    NULL,
    'Chand',
    'Khem Chand',
    NULL,
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
    NULL,
    103,
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
    99, 
    '37866', 
    'gAAAAABpLWr77p-qFQYTLN899diYBp6g9AM5sps-295hAXhKRsCqkm7BRsQjMhp0HveRgXRyB9_a393DhAy4w0GFScj7RR6VXwtyj47tkQMDZexUntt8LfM=', 
    'gAAAAABpLWr79bjA9xiirV1pZ5DSyKmhaP3nu-OTAxaPXQQtear7UHuARYwqaATEMRQdvooR9tSGctqqLz73ULdTlA38pf6CoQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-08-01', NULL,
    NOW(), 531773952, NULL,
    'Khem Chand',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    103,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162456, 
    99, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Bharat Bhushan Gupta  (54181.0)
-- Employee ID: 104 | UID: 100 | User Role ID: 444303467162457
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    104,
    '54181',
    'Mr.',
    'Bharat',
    'Bhushan',
    'Gupta',
    'Bharat Bhushan Gupta',
    NULL,
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
    NULL,
    104,
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
    100, 
    '54181', 
    'gAAAAABpLWr7Fa0j0HBvpukfII00aujemXY023PyeJvkceyMQUDzKBePOHTc8RlcoCO4ndzAUevpTiYKJPcN1BBFOsgmvhKLJcslFWqNp6UBlg_PuB0VO4s=', 
    'gAAAAABpLWr7QJ8ykvYfBE9S9TE4mukUCHYX87MGKCBhGfhrl9fD8f2KJs4mUFH9IKY2oAwurpYiO9-VGoe-adkc3MF1hUQoCQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-02-21', NULL,
    NOW(), 531773952, NULL,
    'Bharat Bhushan Gupta',
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Yugal Kishore (52217.0)
-- Employee ID: 105 | UID: 101 | User Role ID: 444303467162458
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    105,
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
    105,
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
    101, 
    '52217', 
    'gAAAAABpLWr7nsSNx-4wt-tK_OtWMdkhiGSYRsIe3-MC6p8fzpxcZGkMd5nmXk-YeX98MbgAulu1l4-XY0a7zsGEm3OmGiU9HnYqUDK3RtgQqfCF5hoTdy8=', 
    'gAAAAABpLWr7Ez0Z0kRV8q_17CMxHTeAgbLfkHI-qE8ZHYRCqbz_0Yb8Nup1n0dgCZuCA6gtG5zyxSKaEoItIn16s5mWqaQlbw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-07-01', NULL,
    NOW(), 531773952, NULL,
    'Yugal Kishore',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
    2,
    105,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162458, 
    101, 
    532193206, 
    381, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Suresh Kumar  (50542.0)
-- Employee ID: 106 | UID: 102 | User Role ID: 444303467162459
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    106,
    '50542',
    'Mr.',
    'Suresh',
    NULL,
    'Kumar',
    'Suresh Kumar',
    NULL,
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
    NULL,
    106,
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
    102, 
    '50542', 
    'gAAAAABpLWr7houjMok6TqmdmtW1yxb5cjDRLyzH0lCJcQdjph8J1AR1q-Mb0S1VrXyCQ5OUStZmUJp3Mj_OKLAg2Y5UCFkZvkt8akS8_rODNEe77B9BtZY=', 
    'gAAAAABpLWr7Cn4FRGbJ-JcFQTAqzSAt2_mYmD7pomhRF_umzZ7Qz9R5jF78Dj9ntATBuXxzkUCsAXV0S-tvY1bWtB4MTDbppA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2022-06-29', NULL,
    NOW(), 531773952, NULL,
    'Suresh Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    106,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162459, 
    102, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Manoj Kumar  (38013.0)
-- Employee ID: 107 | UID: 103 | User Role ID: 444303467162460
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    107,
    '38013',
    'Mr.',
    'Manoj',
    NULL,
    'Kumar',
    'Manoj Kumar',
    NULL,
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
    NULL,
    107,
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
    103, 
    '38013', 
    'gAAAAABpLWr7MrjT3a13K28NALLgzy7wfDhIvx6r5RyzxXxjW7gnF4Pu59z_WIpMJ_3aStYPkyjLN3vCRSaSHkpKc2RCAWHQOwmw9OMYhd3V8bvN3uGKZ1k=', 
    'gAAAAABpLWr7T__nQBfon6zei3SpYXTDQzXIa2_KzS6BtO1KCvgADJQ_ZKkZswDD0r_4CkMZuIEYyHzjwoSQRn_DPXhLeiBXLA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-07-12', NULL,
    NOW(), 531773952, NULL,
    'Manoj Kumar',
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Pushp Raj  (14559.0)
-- Employee ID: 108 | UID: 104 | User Role ID: 444303467162461
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    108,
    '14559',
    'Mr.',
    'Pushp',
    NULL,
    'Raj',
    'Pushp Raj',
    NULL,
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
    NULL,
    108,
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
    104, 
    '14559', 
    'gAAAAABpLWr7eeS4a6VR8V7xwNtk-Af0cmQNIW_loB7o9RWh5qJSq9fid8XVgNLu10Go3D1zJ_6k-CF9x0rdeLMnDR0mQXtd4dthlTvCaBxpR89jPWoEFLE=', 
    'gAAAAABpLWr7Aaw4Eobh_6RKMVrkR6Sh8RuudTjmfSF0K_vav7KaOoEumteNY__WdXhvaOER2aB3JXsQwO0EtXiPBp7Ksu9Ggg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-03-16', NULL,
    NOW(), 531773952, NULL,
    'Pushp Raj',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
    1,
    108,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162461, 
    104, 
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 15
-- Total errors: 10