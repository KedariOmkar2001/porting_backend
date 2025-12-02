-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 18:06:22
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
    'wOBlJeD3nH2wCgAZV+hPLZ+SJbLS2Cq43/tkBCj7Myc=', 
    'BoM9vh2BenRjbV/xlfLCUQ==', 
    'User@123',
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
    'nD8G8wSFmnthN/q5b4TDoMv9pMVt949bOeyz49xm6aA=', 
    'r9LxncTyCVPrTNq2WhbaCQ==', 
    'User@123',
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
    'FRTBAEJArQO1O/sT7IYjB6Hl9LaV9tc67pslmsEoclo=', 
    'nqAReWxqg3DvQfDuwGKJzw==', 
    'User@123',
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
    'POTzGblWGqn20Qb4UAm8LHhY1Zvdqwrnep2mW8KgaxU=', 
    '2lQgj7sxNfyHyHvwASpEqA==', 
    'User@123',
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
    'So9YpQ94qme5l4+1RoNa+92Eb3blmp6ZZEMrBEPr3PM=', 
    'I/E54F5m4uL7tAKJO0h3jA==', 
    'User@123',
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
    'gZESDiCkPKDynYt0tkWFLYL/UjsEELb2QAhOEkAwFfY=', 
    'vAB63wNwHulcEl1kNfiICg==', 
    'User@123',
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
    'xanTLRasLwK1ThGUI99c7xpGytJhbwp3dR8rurD1nvM=', 
    'uJk0FlzSc6z5RzQPoVklJg==', 
    'User@123',
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
    'Zg64NSdxm9IAyoZdVuk07Eg65g+9WGQHW+LgrWYGQtk=', 
    'g67E44YfiLnOYB7yl8SXFQ==', 
    'User@123',
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
-- Employee: Yogesh  Kumar  (55842)
-- Employee ID: 102 | UID: 98 | User Role ID: 444303467162455
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    102,
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
    102,
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
    98, 
    '55842', 
    'igJLl/dqVeL1pNI0zsKggp+SJbLS2Cq43/tkBCj7Myc=', 
    'bE7g2kUzCWVi+nMmpYVxEQ==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '19/05/2023', NULL,
    NOW(), 490523392, NULL,
    'Yogesh  Kumar',
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
    397, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Prerna  Gautam  (53792)
-- Employee ID: 103 | UID: 99 | User Role ID: 444303467162456
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    103,
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
    103,
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
    99, 
    '53792', 
    'NdkxDz9NDrYmR7XTkiJ/fytTEgBGW3/Za1lNQV8zasU=', 
    '+FM1l66wGiF6L/3pJurgcA==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2020-06-04', NULL,
    NOW(), 490523392, NULL,
    'Prerna  Gautam',
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
    403, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Abhay  Gautam  (nan)
-- Employee ID: 104 | UID: 100 | User Role ID: 444303467162457
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    104,
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
    104,
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
    100, 
    '0', 
    'ZKsr/IJWtZ/EiJpUfAD4sBpGytJhbwp3dR8rurD1nvM=', 
    'DOCt8H4rvMmzpey9Zi8CZw==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2024-07-10', NULL,
    NOW(), 490523392, NULL,
    'Abhay  Gautam',
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
    406, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Bhupender  Kumar  (52166)
-- Employee ID: 105 | UID: 101 | User Role ID: 444303467162458
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    105,
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
    105,
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
    101, 
    '52166', 
    'TnX6CAO5xV0q+8e/l0/0Jkg65g+9WGQHW+LgrWYGQtk=', 
    'D/muqfQQ8/5xLoBv4rM+jA==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2024-02-22', NULL,
    NOW(), 490523392, NULL,
    'Bhupender  Kumar',
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
    408, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rattan  Singh (56567)
-- Employee ID: 106 | UID: 102 | User Role ID: 444303467162459
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    106,
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
    106,
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
    102, 
    '56567', 
    'Xfy7R8SveX9XCksGsxlRmMv9pMVt949bOeyz49xm6aA=', 
    'O1Ep4V3h0FjIsey6oYBiaA==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2023-08-02', NULL,
    NOW(), 490523392, NULL,
    'Rattan  Singh',
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
    401, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Krishan  Kumar  (55835)
-- Employee ID: 107 | UID: 103 | User Role ID: 444303467162460
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    107,
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
    107,
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
    103, 
    '55835', 
    'o+CNlgbzAQpcqcXBMDnF94cZuaYLCDQPuv9xMh9INYQ=', 
    '+Ibcm2/9zj8tnTyvEnPfEQ==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2024-03-07', NULL,
    NOW(), 490523392, NULL,
    'Krishan  Kumar',
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
    405, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rohit  Palta  (52750)
-- Employee ID: 108 | UID: 104 | User Role ID: 444303467162461
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    108,
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
    108,
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
    104, 
    '52750', 
    'ser7taq2tG1I1jl4bGc09hpGytJhbwp3dR8rurD1nvM=', 
    'ySfHzw8Fw4gmwDReyQg8pw==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2023-10-05', NULL,
    NOW(), 490523392, NULL,
    'Rohit  Palta',
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
    404, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tek  Singh (45861)
-- Employee ID: 109 | UID: 105 | User Role ID: 444303467162462
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    109,
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
    109,
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
    105, 
    '45861', 
    'SsnNSKG7i36c6vRNdtrol4BN0t/gCEeuKSsc/W6hZ5o=', 
    'in4bVopDfCvVKqQ4rTsMHw==', 
    'User@123',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 490523392, NULL,
    'Tek  Singh',
    'SUPERINTENDENT',
    'HPPWD',
    2065005056,
    250433797,
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
-- Employee: Pankaj  Sharma  (41661)
-- Employee ID: 110 | UID: 106 | User Role ID: 444303467162463
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    110,
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
    110,
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
    106, 
    '41661', 
    '4TxtWz5/Lr+PvEcc10dzjhUeuv1hOMjLQvq6ZH8sKUQ=', 
    'qhSoKKGL3uQ0Gml+pbtypg==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2025-01-17', NULL,
    NOW(), 490523392, NULL,
    'Pankaj  Sharma',
    'SUPERINTENDENT',
    'HPPWD',
    2065005056,
    250433797,
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
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tilak  Raj  Kaushal  (50442)
-- Employee ID: 111 | UID: 107 | User Role ID: 444303467162464
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    111,
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
    111,
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
    107, 
    '50442', 
    'D1/jMZ0axWo7QbwQbeZCMxUeuv1hOMjLQvq6ZH8sKUQ=', 
    'JrS+Uz7HR23c3pqE9yQsNA==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2025-01-24', NULL,
    NOW(), 490523392, NULL,
    'Tilak  Raj  Kaushal',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
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
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vikas  Chaudhary  (50444)
-- Employee ID: 112 | UID: 108 | User Role ID: 444303467162465
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    112,
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
    112,
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
    108, 
    '50444', 
    'PgbV+mnC8JKpV80XBgxFXK2Xmayaqz1Ko3/DdUj75OY=', 
    'eMw/VWhemoCZ92W/Oekmpg==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2024-06-12', NULL,
    NOW(), 490523392, NULL,
    'Vikas  Chaudhary',
    'AUDITOR',
    'HPPWD',
    2065005056,
    250433796,
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
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Chandan  Bharti  (52327)
-- Employee ID: 113 | UID: 109 | User Role ID: 444303467162466
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    113,
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
    113,
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
    109, 
    '52327', 
    'K3C590VULhlCmZJAQBQw2OYcnVQEaAlmMUkExDLZtkE=', 
    'msW6lnMGgOPhfPP7K6WDuw==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2022-07-16', NULL,
    NOW(), 490523392, NULL,
    'Chandan  Bharti',
    'TENDER ASSISTANT',
    'HPPWD',
    2065005056,
    250433795,
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
    350, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Devki  Nandan (55572)
-- Employee ID: 114 | UID: 110 | User Role ID: 444303467162467
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    114,
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
    114,
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
    110, 
    '55572', 
    'GXRO7aInnmWgZbSjJpGhTZmd64y5SKnGMruoLFCWtW4=', 
    's8mvI9nuMZ0GkZlX42Ki3Q==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2023-04-11', NULL,
    NOW(), 490523392, NULL,
    'Devki  Nandan',
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
-- Employee: Dharam  Pal (12350)
-- Employee ID: 115 | UID: 111 | User Role ID: 444303467162468
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    115,
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
    115,
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
    111, 
    '12350', 
    'Id0HQ8h6+wET1EUNO3MBOBpGytJhbwp3dR8rurD1nvM=', 
    'EAPbSftF+vgHi+t/mfY3DA==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2025-04-05', NULL,
    NOW(), 490523392, NULL,
    'Dharam  Pal',
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
-- Employee: Rajeev   Sharma (50521)
-- Employee ID: 116 | UID: 112 | User Role ID: 444303467162469
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    116,
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
    116,
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
    112, 
    '50521', 
    'A45bFSNfhsi5nnoEnsr8s6Hl9LaV9tc67pslmsEoclo=', 
    'dlNBnQIbfEU+7UkJyE7LSw==', 
    'User@123',
    '',
    'A', 'N', 'N',
    '2025-04-24', NULL,
    NOW(), 490523392, NULL,
    'Rajeev   Sharma',
    'DRAUGHTSMAN',
    'HPPWD',
    2065005056,
    250433794,
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
    NULL, 
    NOW(), 
    490523392, 
    2065005056, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 23
-- Total errors: 6