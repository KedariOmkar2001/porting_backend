-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 17:55:22
-- ================================================================================
BEGIN;


================================================================================
-- Employee: Roshan  lal Thakur  (nan)
-- Employee ID: 94 | UID: 90 | User Role ID: 444303467162447
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    94,
    '0',
    'Shri.',
    'Roshan',
    'lal',
    'Thakur',
    'Roshan  lal Thakur',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    NULL,
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
    NULL,
    NULL,
    490523392, NOW(), 2065005056,
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
    '0', 
    'gAAAAABpLYkyJDQotN4CJ_CT010FvndsufqF21FBfqtZNpLZQTGaZUSLm8dxAQ6-mjyzLZddLVw1eUBV95hsu1sMJEymWxl7teyKBbRLILnnG1y5XP3fCE0=', 
    'gAAAAABpLYkyjhw8P1NgqJPep2gCPL-WVXmX5aKUblkaR0oMK5pXqIvCAU8_VNyxSjKxtWcno6pbo3oB7gUJS1U2woOys9vywQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 490523392, NULL,
    'Roshan  lal Thakur',
    'EXECUTIVE ENGINEER',
    'HPPWD',
    2065005056,
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
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Yashwant  Singh  Chandel (43731)
-- Employee ID: 95 | UID: 91 | User Role ID: 444303467162448
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    95,
    '43731',
    'Shri.',
    'Yashwant',
    'Singh',
    'Chandel',
    'Yashwant  Singh  Chandel',
    391,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2005-04-25',
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
    391,
    95,
    2,
    'N',
    '2023-11-13',
    NULL,
    490523392, NOW(), 2065005056,
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
    '43731', 
    'gAAAAABpLYkyM3ueIvUHJ9f_fCkKVfnUW0pXdKhQwrYAIMUhe6im2TfJqK8pfiEi-FyBgpa5kpJGSnrqopVX7ZonzYj6gaD9bvKpz5bLodc5t7RAWAB0lNg=', 
    'gAAAAABpLYkyExiqpGClB6Cwz5K3hW0TXkcr9o0-coOdZDI5-nJPchpWy6qPDQSCB614e3Kdys7ziUwJU_6uwVytfqYXJa7YVQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2023-11-13', NULL,
    NOW(), 490523392, NULL,
    'Yashwant  Singh  Chandel',
    'ASSISTANT ENGINEER',
    'HPPWD',
    2065005056,
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
    532193206, 
    391, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Kamal Kishore Gupta  (49772)
-- Employee ID: 96 | UID: 92 | User Role ID: 444303467162449
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    96,
    '49772',
    'Shri.',
    'Kamal',
    'Kishore',
    'Gupta',
    'Kamal Kishore Gupta',
    392,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2005-04-16',
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
    392,
    96,
    2,
    'N',
    '2025-07-08',
    NULL,
    490523392, NOW(), 2065005056,
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
    '49772', 
    'gAAAAABpLYky6bzsStTB0ISuPQ7BIU-bXK52zkawEZlZAPyAfl4dBGPrOy97inU8zlSPBPV9gwy77ZB4YyTb7r5QNhYeJ9thTO0yfIT38oxZx_nAd3Un-V4=', 
    'gAAAAABpLYkymHeSxWVDOLAtvj5Np9IXai-3fg8KYNjbWfx5MhRExwTq7YoVEXKvULNWTk-eOek4vijJ3er3CshBansyvMW2zQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-07-08', NULL,
    NOW(), 490523392, NULL,
    'Kamal Kishore Gupta',
    'ASSISTANT ENGINEER',
    'HPPWD',
    2065005056,
    2,
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
    392, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sanjay  Sharma  (12137)
-- Employee ID: 97 | UID: 93 | User Role ID: 444303467162450
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    97,
    '12137',
    'Shri.',
    'Sanjay',
    NULL,
    'Sharma',
    'Sanjay  Sharma',
    395,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2004-02-28',
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
    395,
    97,
    2,
    'N',
    '2021-09-09',
    NULL,
    490523392, NOW(), 2065005056,
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
    '12137', 
    'gAAAAABpLYkyGTJOeXoXT1PAFt6ROVjxL0Cs3WUAeZgl2Aj0GAGcd0cQPQmtKqclz1CtzF_zpcF46FUjJSUU2J2Zz2MiBMdNtD-pf2hHs8jJBwzYYcLLZdY=', 
    'gAAAAABpLYkygo_ytObD5g8BAu0-CDG22gX38husnVFxq9yEfAPiJ6p3xWqW6IKMf-rbey_PE9qKApOH7fCzQhgBQ1ESJjuQ4A==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2021-09-09', NULL,
    NOW(), 490523392, NULL,
    'Sanjay  Sharma',
    'ASSISTANT ENGINEER',
    'HPPWD',
    2065005056,
    2,
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
    395, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sahil  Verma  (51268)
-- Employee ID: 98 | UID: 94 | User Role ID: 444303467162451
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    98,
    '51268',
    'Shri.',
    'Sahil',
    NULL,
    'Verma',
    'Sahil  Verma',
    394,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2019-04-09',
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
    394,
    98,
    2,
    'N',
    NULL,
    NULL,
    490523392, NOW(), 2065005056,
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
    '51268', 
    'gAAAAABpLYky-RQp7r-pXdRxw6ASQouu8JBmyoq1Vh4jV91KTLpBiCj1I4kmmt5n4kNE9Z0yMXIx-ua1rmxHtQcUrqNV5Ay82dLfZq_If5wyYpYcdc7O5tI=', 
    'gAAAAABpLYkyGmj6hBzRrHoKSDcuM1SnlxBl7UWaJ8K9Gy7xkNGN47oTPSYtHUJFhqnGWMwu8xcR2lV8eIORqL5880VmTFWLzw==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 490523392, NULL,
    'Sahil  Verma',
    'ASSISTANT ENGINEER',
    'HPPWD',
    2065005056,
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
    394, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vijay  Singh  Guleria  (37772)
-- Employee ID: 99 | UID: 95 | User Role ID: 444303467162452
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    99,
    '37772',
    'Shri.',
    'Vijay',
    'Singh',
    'Guleria',
    'Vijay  Singh  Guleria',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2012-08-08',
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
    350,
    99,
    6,
    'N',
    '2023-03-20',
    NULL,
    490523392, NOW(), 2065005056,
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
    '37772', 
    'gAAAAABpLYkyR4izTCDekLXBaCg3_fLpegNJFNQSw6At3P5c-VeJU9nS4_VSXjhCodUC6RgjfnzG9-WoVw85AvfU9i5cHR3Z-EWMgn-3wIzkEc-njCQPmsw=', 
    'gAAAAABpLYkyFBzmMnnijF4-wWd4okKaKDRyrORz9WZc-cXE_Kps4LWynYNGxk1guUulNCG4mULtdc4QFGltXFT7hPwogHMc2w==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2023-03-20', NULL,
    NOW(), 490523392, NULL,
    'Vijay  Singh  Guleria',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    2065005056,
    6,
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
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sharavan  Kumar  (51188)
-- Employee ID: 100 | UID: 96 | User Role ID: 444303467162453
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    100,
    '51188',
    'Shri.',
    'Sharavan',
    NULL,
    'Kumar',
    'Sharavan  Kumar',
    400,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2019-04-09',
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
    400,
    100,
    1,
    'N',
    '2021-09-10',
    NULL,
    490523392, NOW(), 2065005056,
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
    '51188', 
    'gAAAAABpLYkyoKx8aDWx8kuqQOibPFm38WnI8sIykcCrHPw-z4s95NykE6OSDqVI2sGkQMmmbzOlgQ1NU79yK3vY_3UDUtYs7JjSczt0G1tZkDf_MaFJC8M=', 
    'gAAAAABpLYkyBxSd7j87ehuPz3AEsPB20JvrvQrTyxJM9eGsaD0rkl8ZQYIUhNwDWlnx0MFYWpCjWqbLqwGP_oLwGtlChOVNlg==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2021-09-10', NULL,
    NOW(), 490523392, NULL,
    'Sharavan  Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    400, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Poonam Kumari  (53518)
-- Employee ID: 101 | UID: 97 | User Role ID: 444303467162454
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    101,
    '53518',
    'Ms.',
    'Poonam',
    NULL,
    'Kumari',
    'Poonam Kumari',
    399,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2023-05-01',
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
    399,
    101,
    1,
    'N',
    '2024-02-29',
    NULL,
    490523392, NOW(), 2065005056,
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
    '53518', 
    'gAAAAABpLYkyKiQ4dPG6OBTj8o3wGIV-zIx0wQUy8S1Aovl4CSa859ydvd7nFchxtZkwWtaAzUj8ybHC4NwW5ix6s7GvYpwYSTzTuTWjWVszS0mXj8F-mTM=', 
    'gAAAAABpLYkypbccoRqLk78nPujl2n5Durg3ffZPag7jSDOVGtbJKpnBHmsPbulwd4vegtvzBaT5LlF8bLSnVWGGeTL4OeybuQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-02-29', NULL,
    NOW(), 490523392, NULL,
    'Poonam Kumari',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    399, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sunder  Singh (39481)
-- Employee ID: 102 | UID: 98 | User Role ID: 444303467162455
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    102,
    '39481',
    'Shri.',
    'Sunder',
    NULL,
    'Singh',
    'Sunder  Singh',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2007-01-22',
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
    1,
    'N',
    '2025-08-02',
    NULL,
    490523392, NOW(), 2065005056,
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
    '39481', 
    NULL, 
    NULL, 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-08-02', NULL,
    NOW(), 490523392, NULL,
    'Sunder  Singh',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
    1,
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
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Yogesh  Kumar  (55842)
-- Employee ID: 103 | UID: 99 | User Role ID: 444303467162456
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    103,
    '55842',
    'Shri.',
    'Yogesh',
    NULL,
    'Kumar',
    'Yogesh  Kumar',
    397,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-05-12',
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
    397,
    103,
    1,
    'N',
    '19/05/2023',
    NULL,
    490523392, NOW(), 2065005056,
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
    '55842', 
    'gAAAAABpLYkyAt4NF4p1FDZk1iuYPeZ3FbwGdL_eugoUDegPmXWxCqt-PhP2JFDlfEvTWFfRFXV40TtFbdYdZa-QahQ2V9kMjWhLdZcLIKT_YOUNrOjsDu4=', 
    'gAAAAABpLYkyDNm4ny5VnPrMJIUbI6qwkLOCgGchhrwPfWNrigLi7scsMpRc8B4fdubePHFI-nTMFGQqclPBBjIsln90mxugcQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '19/05/2023', NULL,
    NOW(), 490523392, NULL,
    'Yogesh  Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    397, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Prerna  Gautam  (53792)
-- Employee ID: 104 | UID: 100 | User Role ID: 444303467162457
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    104,
    '53792',
    'Ms.',
    'Prerna',
    NULL,
    'Gautam',
    'Prerna  Gautam',
    403,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2019-04-09',
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
    403,
    104,
    1,
    'N',
    '2020-06-04',
    NULL,
    490523392, NOW(), 2065005056,
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
    '53792', 
    'gAAAAABpLYkyTAiFfQWqTtoUGus1rupLwgegIBk12_vazEBQa8AirgcVqRFPcUj9X-gXzFkiwU120aPb0ikSLHOFYcrztyWugB6d8prCtFEkjoCA1lA3gmc=', 
    'gAAAAABpLYky4DADMWlLU2p8g0burGIH-q6EbXlmIPJrTvgNDYScR8PwnwfLGIp-hKHwU6PcVg9V18p9WXcyLCodYubotdbOdg==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2020-06-04', NULL,
    NOW(), 490523392, NULL,
    'Prerna  Gautam',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    403, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Abhay  Gautam  (nan)
-- Employee ID: 105 | UID: 101 | User Role ID: 444303467162458
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    105,
    '0',
    'Shri.',
    'Abhay',
    NULL,
    'Gautam',
    'Abhay  Gautam',
    406,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2024-06-07',
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
    406,
    105,
    1,
    'N',
    '2024-07-10',
    NULL,
    490523392, NOW(), 2065005056,
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
    '0', 
    'gAAAAABpLYkyiTJKmDHk-DUMBYrKU_ZJaTJf-SyEVoitJCzhYzjfjRRzP_EGfAnm9syFMkUzNtnMczIsdgab710osHI658KMTYVvLh__wZYMsfhJQEiTzi8=', 
    'gAAAAABpLYkyuvI2BTR-EHNAk-h4bAnofDRcgEfIWvSDInbJWQmR9FggK4b0P93eKGlMZ7O_bX2oDUAB_CuQqim9DO8OoQ4Gfw==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-07-10', NULL,
    NOW(), 490523392, NULL,
    'Abhay  Gautam',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
    1,
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
    406, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Meera  Devi (20946)
-- Employee ID: 106 | UID: 102 | User Role ID: 444303467162459
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    106,
    '20946',
    'Shri.',
    'Meera',
    NULL,
    'Devi',
    'Meera  Devi',
    407,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2006-12-29',
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
    407,
    106,
    1,
    'N',
    '2006-12-29',
    NULL,
    490523392, NOW(), 2065005056,
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
    '20946', 
    NULL, 
    'gAAAAABpLYky8QZWQARFsIHjrYwB-TESE-JWxo_nofyIvAadC5_9bGy3VVRaRSDNDVFTk67-n7ist2zxDn0PAlHf19zFpXyF7Q==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2006-12-29', NULL,
    NOW(), 490523392, NULL,
    'Meera  Devi',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    407, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Bhupender  Kumar  (52166)
-- Employee ID: 107 | UID: 103 | User Role ID: 444303467162460
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    107,
    '52166',
    'Shri.',
    'Bhupender',
    NULL,
    'Kumar',
    'Bhupender  Kumar',
    408,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-05-15',
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
    408,
    107,
    1,
    'N',
    '2024-02-22',
    NULL,
    490523392, NOW(), 2065005056,
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
    '52166', 
    'gAAAAABpLYkyQ0_ZJQRXSIBy9b5pM5MEZGM9Fovnjj9Nwv5z6MSbjWvKo0i40vmRlSTy4Xz0xTBKV3FiXLVfAkvisdbaDCptnAEWSl6V7z1wN1q_-hVUeNM=', 
    'gAAAAABpLYkyIPFvTrzbVDy0UhNHHpGPb5Kvhs0_KVYKac7w-S-slPhJ2XTmkU0SJT6ZTFd_u_AOjLo-M0UQYF817wOV3migdA==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-02-22', NULL,
    NOW(), 490523392, NULL,
    'Bhupender  Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    408, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rattan  Singh (56567)
-- Employee ID: 108 | UID: 104 | User Role ID: 444303467162461
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    108,
    '56567',
    'Shri.',
    'Rattan',
    NULL,
    'Singh',
    'Rattan  Singh',
    401,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2006-04-01',
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
    401,
    108,
    1,
    'N',
    '2023-08-02',
    NULL,
    490523392, NOW(), 2065005056,
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
    '56567', 
    'gAAAAABpLYkylkezaUDzEc0-qZO1O34zonuxdwWVXpearVxVjMv2GtvQiNMrAOQckgXqy8xTPoZE4Sp-c2-1Upl1OfCqLS9p2VlInKY_In07411YVWh1fDQ=', 
    'gAAAAABpLYkyh5XknkwSD1FVbpIVwasOu7pIuq_qTNp4nBmAeMu7DS2HA94HQmKt_6wBhZ5FS89dnGKSeUOr8YHojFzPl7dPpQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2023-08-02', NULL,
    NOW(), 490523392, NULL,
    'Rattan  Singh',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    401, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sanjay   (nan)
-- Employee ID: 109 | UID: 105 | User Role ID: 444303467162462
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    109,
    '0',
    'Shri.',
    'Sanjay',
    NULL,
    NULL,
    'Sanjay',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    NULL,
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
    109,
    1,
    'N',
    '2025-11-01',
    NULL,
    490523392, NOW(), 2065005056,
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
    '0', 
    NULL, 
    NULL, 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-11-01', NULL,
    NOW(), 490523392, NULL,
    'Sanjay',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Krishan  Kumar  (55835)
-- Employee ID: 110 | UID: 106 | User Role ID: 444303467162463
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    110,
    '55835',
    'Shri.',
    'Krishan',
    NULL,
    'Kumar',
    'Krishan  Kumar',
    405,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-04-22',
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
    405,
    110,
    1,
    'N',
    '2024-03-07',
    NULL,
    490523392, NOW(), 2065005056,
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
    '55835', 
    'gAAAAABpLYkydRVBq44OQago67BZ4ButMYqajD3_Da21r2EL7SF9fFgC8gfhyr9OszjDdjCSAboFmQibgZvlQtTKhdLzL8-wD_z9fpL17aAhSCFV9X9VNb4=', 
    'gAAAAABpLYkyWbUJMz5nj1F2wpHIqndO0qzC6ei168t6-7h5crmiFCktCmPcU_KHbUzCQAU6nQnzBWCXpNuK51jpc8vddHLyeA==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-03-07', NULL,
    NOW(), 490523392, NULL,
    'Krishan  Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
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
    532193206, 
    405, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rohit  Palta  (52750)
-- Employee ID: 111 | UID: 107 | User Role ID: 444303467162464
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    111,
    '52750',
    'Shri.',
    'Rohit',
    NULL,
    'Palta',
    'Rohit  Palta',
    404,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2019-04-09',
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
    404,
    111,
    1,
    'N',
    '2023-10-05',
    NULL,
    490523392, NOW(), 2065005056,
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
    '52750', 
    'gAAAAABpLYky-5P_r4a1xfchnlYNjvNGZ7o4tmFqU1Bzjwb2QMk_KkyOYruZBMjyob6R4SFuVGpwJuelsW7BW2FRBOm2ekb23HKciNKwMYoHvuRhbfhFOxc=', 
    'gAAAAABpLYkyKWQO9uUj6zl1O7dZRZDo4umRyVkfOftkk8RiMOrX4fTMCBHffNyhQAcbRHLYKH5E9T47e9FHJoKjxNXDRHo2ZQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2023-10-05', NULL,
    NOW(), 490523392, NULL,
    'Rohit  Palta',
    'JUNIOR ENGINEER',
    'HPPWD',
    2065005056,
    1,
    111,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162464, 
    107, 
    532193206, 
    404, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tek  Singh (45861)
-- Employee ID: 112 | UID: 108 | User Role ID: 444303467162465
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    112,
    '45861',
    'Shri.',
    'Tek',
    NULL,
    'Singh',
    'Tek  Singh',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '1990-07-25',
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
    112,
    250433797,
    'N',
    NULL,
    NULL,
    490523392, NOW(), 2065005056,
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
    '45861', 
    'gAAAAABpLYky7IbXPNfGmDAeBaUUNC5E0AndrHQAGPwP8evmjDKi3VjwgrWoJWp9wzNnSniW_xKxAGnY9RLsR_c-CN2B1SOSyZ2n2XTSj1JrHqZHbwfOFOQ=', 
    'gAAAAABpLYkyMg7bJqMbeReiONx84Uv3uqj6zsJYTYSS9JyL7UEjwsqlNqON7mtsxWmBaw-XBpnSNijFJ2QBIe6Jgp4GTeWMgw==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 490523392, NULL,
    'Tek  Singh',
    'SUPERINTENDENT',
    'HPPWD',
    2065005056,
    250433797,
    112,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162465, 
    108, 
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Pankaj  Sharma  (41661)
-- Employee ID: 113 | UID: 109 | User Role ID: 444303467162466
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    113,
    '41661',
    'Shri.',
    'Pankaj',
    NULL,
    'Sharma',
    'Pankaj  Sharma',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '23/10/1998',
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
    113,
    250433797,
    'N',
    '2025-01-17',
    NULL,
    490523392, NOW(), 2065005056,
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
    '41661', 
    'gAAAAABpLYky4DQsu-s2TUozr841ZNY4D_l8mkHijDAAOQ2eWCaFaWe-B1D3U1IwCdKYU9fsb2BTmLS6CDptasegGcRivFXYH_9StvqtdrqJpmwRXD1EmUE=', 
    'gAAAAABpLYkyLzj2zN3fHFRRYnDC5if_MIGsmoGxz9mZN9uVsVwCstLaPaWqAsfAipQwOYF9bPrGrXy0Z1Ay71wtV3ELJyhOQg==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-01-17', NULL,
    NOW(), 490523392, NULL,
    'Pankaj  Sharma',
    'SUPERINTENDENT',
    'HPPWD',
    2065005056,
    250433797,
    113,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162466, 
    109, 
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tilak  Raj  Kaushal  (50442)
-- Employee ID: 114 | UID: 110 | User Role ID: 444303467162467
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    114,
    '50442',
    'Shri.',
    'Tilak',
    'Raj',
    'Kaushal',
    'Tilak  Raj  Kaushal',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-05-05',
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
    350,
    114,
    250433796,
    'N',
    '2025-01-24',
    NULL,
    490523392, NOW(), 2065005056,
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
    '50442', 
    'gAAAAABpLYky857SnP6ItSg5mxRn-GDHpgIRM4eeQvsAZC6gyq-d1OIEK3jKWpqsQeDI0yFIVmOOzXo56EsVg4OKJDi2VDKEZCMmKqZt0kWStXedQOJLvwo=', 
    'gAAAAABpLYkyqqS1Zjt2nS8qpsytKk13u4h-_EnRSHKPWwyaN-QY2B9qJz5fAgQQhn4TCpOqISd0_Idf41pGQU0eNn3N2hFJEg==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-01-24', NULL,
    NOW(), 490523392, NULL,
    'Tilak  Raj  Kaushal',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    114,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162467, 
    110, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vikas  Chaudhary  (50444)
-- Employee ID: 115 | UID: 111 | User Role ID: 444303467162468
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    115,
    '50444',
    'Shri.',
    'Vikas',
    NULL,
    'Chaudhary',
    'Vikas  Chaudhary',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-05-05',
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
    350,
    115,
    250433796,
    'N',
    '2024-06-12',
    NULL,
    490523392, NOW(), 2065005056,
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
    '50444', 
    'gAAAAABpLYkyh1JPuQBSgYc4vKBlYjrJDDCdnfn82L0fjde5tIF4pPbGcTmJFP7h3j9JP3rK819GvcnPtCrmrcLkhZJPUp8BZE72QYiUcFeCmwOrwdwxN2w=', 
    'gAAAAABpLYkyvPqqEWrKAHGF39NwySHNou29Kjy61jOrJfNW-6C6lqZsYgSsWMPYOeWa4IR7vcjoJ-Pu-SrtIItPCY68hId49Q==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-06-12', NULL,
    NOW(), 490523392, NULL,
    'Vikas  Chaudhary',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    115,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162468, 
    111, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Chandan  Bharti  (52327)
-- Employee ID: 116 | UID: 112 | User Role ID: 444303467162469
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    116,
    '52327',
    'Shri.',
    'Chandan',
    NULL,
    'Bharti',
    'Chandan  Bharti',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2014-07-19',
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
    350,
    116,
    250433795,
    'N',
    '2022-07-16',
    NULL,
    490523392, NOW(), 2065005056,
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
    '52327', 
    'gAAAAABpLYkyluqJncaUc6mZJgdA0nbG1TXlXdYFOwACi6MsfRHzS1s7MtaJWsg6GastHXZzHDfc1Ch4ZLLg9JG4LTnxxMIEPAq0nCocH21LtRXdCLl1upQ=', 
    'gAAAAABpLYkyALF-7i1tQE2omQlNN99oc9VjzP4_WAXJLx3hzLHvK0L4Jb9EuGsfdBxECEmAAxcqhqTtAT02-eC9tKqzQx8VXQ==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2022-07-16', NULL,
    NOW(), 490523392, NULL,
    'Chandan  Bharti',
    'TENDER ASSISTANT',
    'HPPWD',
    2065005056,
    250433795,
    116,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162469, 
    112, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Devki  Nandan (55572)
-- Employee ID: 117 | UID: 113 | User Role ID: 444303467162470
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    117,
    '55572',
    'Shri.',
    'Devki',
    NULL,
    'Nandan',
    'Devki  Nandan',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2014-07-23',
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
    350,
    117,
    250433796,
    'N',
    '2023-04-11',
    NULL,
    490523392, NOW(), 2065005056,
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
    '55572', 
    'gAAAAABpLYkyRbq_OcK3FfD971hrGxW1X2arnSTzCTvf5P3K0rblw5gzOVKZfjZnxjZ2kLI8faiCLa8X6AOoW54pKJktwDRNl40tJ-20JUwn_n_61qfi88Y=', 
    'gAAAAABpLYkylEWTDnoGzi4wpjLWYiM9Z0b11D8tCQZtkaL83c4KFPh8AYaKYKO83g2pTX5gUVweS5s53adeq3MWhuuXqUvYUA==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2023-04-11', NULL,
    NOW(), 490523392, NULL,
    'Devki  Nandan',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    117,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162470, 
    113, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vishal  Gandotra  (nan)
-- Employee ID: 118 | UID: 114 | User Role ID: 444303467162471
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    118,
    '0',
    'Shri.',
    'Vishal',
    NULL,
    'Gandotra',
    'Vishal  Gandotra',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    NULL,
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
    350,
    118,
    250433796,
    'N',
    NULL,
    NULL,
    490523392, NOW(), 2065005056,
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
    '0', 
    NULL, 
    'gAAAAABpLYkyXUAuQQGT5wMmZ1dggcPRZsm6PVkmJXToN5Iti1VKEcqrBpcc3NszUI7LF5LPqG6FSjJ3o4V5V_TZnQgxiPDSAw==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 490523392, NULL,
    'Vishal  Gandotra',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    118,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162471, 
    114, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Dorje  Palzome  (43708)
-- Employee ID: 119 | UID: 115 | User Role ID: 444303467162472
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    119,
    '43708',
    'Smt.',
    'Dorje',
    NULL,
    'Palzome',
    'Dorje  Palzome',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2004-05-24',
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
    350,
    119,
    250433796,
    'N',
    '2024-07-19',
    NULL,
    490523392, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    115, 
    '43708', 
    NULL, 
    'gAAAAABpLYkyf1viDkHw_6K_RfOyrBWGSRgcJT_L8MNFuBJt28FRSYnSWTh_4QGwt4jYeuEbtBiQ6pzA-v_Ybpyol1i5qDU7Bw==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-07-19', NULL,
    NOW(), 490523392, NULL,
    'Dorje  Palzome',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    119,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162472, 
    115, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Dharam  Pal (12350)
-- Employee ID: 120 | UID: 116 | User Role ID: 444303467162473
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    120,
    '12350',
    'Shri.',
    'Dharam',
    NULL,
    'Pal',
    'Dharam  Pal',
    350,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2000-01-13',
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
    350,
    120,
    250433796,
    'N',
    '2025-04-05',
    NULL,
    490523392, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    116, 
    '12350', 
    'gAAAAABpLYky3xlQAP6HQ5caRdtj4apa-jhskCLErhsX2bINUatLQPrfmBXaBMrdBDGec5VVMhJdVrMK_TTrjyerXUQqtf-F6qh5TfGKmmx_EFtW9jq08ug=', 
    'gAAAAABpLYkyUHQb_NqZYlt9bz92KnU_J2nxt1LLXguH5jRSMTESL7i83k0SOd5gHxjUzZMA81JnCnJ989PIyxP4-3pERXzEuA==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-04-05', NULL,
    NOW(), 490523392, NULL,
    'Dharam  Pal',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
    120,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162473, 
    116, 
    532193206, 
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rajeev   Sharma (50521)
-- Employee ID: 121 | UID: 117 | User Role ID: 444303467162474
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    121,
    '50521',
    'Shri.',
    'Rajeev',
    NULL,
    'Sharma',
    'Rajeev   Sharma',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-10-03',
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
    121,
    250433794,
    'N',
    '2025-04-24',
    NULL,
    490523392, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    117, 
    '50521', 
    'gAAAAABpLYkyKj2F2Ahfod3OKMFy2ydf6yGf3eghFzJtk5c2QA386zsK42KfxSFL9dffSQBAqtjxtoehY5rIrk4Wj6E6dAHzI6ei4LeGgUm79GbqZhu-sFc=', 
    'gAAAAABpLYkyEA6ZoTSvlqv_i8edXU_qSvcQeZuuOQQkPEyzuKrPO2I97qyB1SE1AJtyOBu6pWbQn7LUt-Qi8y4X4PdpzdkWBA==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2025-04-24', NULL,
    NOW(), 490523392, NULL,
    'Rajeev   Sharma',
    'DRAUGHTSMAN',
    'HPPWD',
    2065005056,
    250433794,
    121,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162474, 
    117, 
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vijay  Kumari  (51610)
-- Employee ID: 122 | UID: 118 | User Role ID: 444303467162475
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    122,
    '51610',
    'Smt.',
    'Vijay',
    NULL,
    'Kumari',
    'Vijay  Kumari',
    NULL,
    'Y', 490523392, NOW(), 2065005056,
    'A',
    '2017-10-03',
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
    122,
    250433794,
    'N',
    '2024-10-30',
    NULL,
    490523392, NOW(), 2065005056,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    118, 
    '51610', 
    NULL, 
    'gAAAAABpLYkyn3XLLX1h8RMSMrrXvLIvx-1X570qi-vwiAZ1v0iR1bXQE-ZpCxnXCt3LM5LkkJUeebBPtScOinJtz-3XcvGh5Q==', 
    '3e7c19576488862816f13b512cacf3e4ba97dd97243ea0bd6a2ad1642d86ba72',
    '',
    'A', 'N', 'N',
    '2024-10-30', NULL,
    NOW(), 490523392, NULL,
    'Vijay  Kumari',
    'DRAUGHTSMAN',
    'HPPWD',
    2065005056,
    250433794,
    122,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162475, 
    118, 
    532193206, 
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 29
-- Total errors: 0