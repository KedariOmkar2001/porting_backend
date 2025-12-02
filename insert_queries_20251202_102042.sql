-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 10:20:42
-- ================================================================================
BEGIN;


================================================================================
-- Employee: Devi Ram  (34679.0)
-- Employee ID: 94 | UID: 90 | User Role ID: 444303467162447
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
    'gAAAAABpLnAiO8h0QnLJoQyJwCeFlniQgRBb9CzIkEqBs3Tp9E1aqbW7s4VQK8tVxt_6kCdQBjgAlwQ5iZ4kh5BAZUS78eLT1KfKPSD9fPWWdOrCxy2Ek9E=', 
    'gAAAAABpLnAi1VcoWtBdR693ojW4CLZG-qSyLtpHKiG94Q6lVV--rSsEIJGRiQWsqomsftumwAzR1K6kllkXNUixzjB3TJHfDQ==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Ram Kumar Sharma  (11425.0)
-- Employee ID: 95 | UID: 91 | User Role ID: 444303467162448
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
    'gAAAAABpLnAirutm_JOpBvvLWx-jKTMz8Kiwxl6T9m4k5kmCs846YUVCM720c_4l-27J92JycTSzdJnXT6AUk8FoJ3g2lERi4yqwx0jdC-Qy19mDi_aWtMg=', 
    'gAAAAABpLnAiHmTS9m2LQyY0HxTm0vWwIZo8Zd7WrYhnuGB2QM5iygdV8v5Y0ruAr-cggn_YuIq_udJnbbOxjSr_ZkHsNDqVdw==', 
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
-- Employee ID: 96 | UID: 92 | User Role ID: 444303467162449
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
    'gAAAAABpLnAis7Dc503FJQyzRu_et3HmvwtJuwGWjzGMYVtgJIa-ts_AK1RTMYoYYOsQdLii53MDpqtNS-_lmQaj9htc9fkzfEMYGwyv3iYHyWt5MdeIaT4=', 
    'gAAAAABpLnAiBF80m9uVIGn44qIAf9NGONYiKEHUNp64txg3EJ4T2XVX2j4YzBf0aek9_lqquadI6OWvG8iBDtdW8kNPTWkKCg==', 
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
    532193206, 
    349, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vijay Kumar  (31331.0)
-- Employee ID: 97 | UID: 93 | User Role ID: 444303467162450
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
    'gAAAAABpLnAiDUG0DCod_KJEGrKWsXQ_1vFk50DSa6hmoP6SBeyoiM6za2Eb2Wn8nyiMCnCefzyvouNAu83L4v6VBAWwrf5oh5zBQvHmPLVhjfvxLufnIc0=', 
    'gAAAAABpLnAiUpaQP56ArxEL1UobobfAIEkj4FDdd_5CIA44amJEkX4EoMA2WP1lVqdkjpKrg6CFNL_0SYH1ehSiGZIXgYDHsA==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Lokesh Kumar  (12697.0)
-- Employee ID: 98 | UID: 94 | User Role ID: 444303467162451
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
    'gAAAAABpLnAi1OxkGzsmI0Tf-5-_yh1wPf3PSCjka1FwGrJrecn3z8xUKKOtj_nJAcIf1ZSVOWvIMI4a6wlekbDIP_jSt19ulrCneP_3VFCe1VzIXnsnLcA=', 
    'gAAAAABpLnAichKYWHDvSW0oPcFbM7q9tU097OfZ-nP56mpo8OnnR1F00ZyRmEYGgZ6RuS-ferfCtNeYMSYJr_0O36YodHuFrg==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Ravi Thakur  (51278.0)
-- Employee ID: 99 | UID: 95 | User Role ID: 444303467162452
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
    'gAAAAABpLnAipRc0dzq6LWsj14mCGWHD_0Y6bmqRw66-lk6vDePiqWE96wG6BzaYQxvwCYgPAJv-YQxj3jq8OrrnA3cJNaOy3yXLpUR_TB1I22gcmKtJqM8=', 
    'gAAAAABpLnAiB2k1-MPlGNTtFMpULXZFh51XixW_MKNQK7Bv0IJbNaGeRKua8qbTBU4kPHGNxMNf9K2b6NXObsccx5nelqgZ5A==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Prem Chand  (57249.0)
-- Employee ID: 100 | UID: 96 | User Role ID: 444303467162453
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
    'gAAAAABpLnAit4eElmhCr3Pey14VMK4loNh882CeyK_7rtdU6LpOktacqIhrqpv7qTOq-QKWFrQVUo2SItTzpGdj7-kJ4QVkZxUQ9_NyJO8zjlqS-UOk8UQ=', 
    'gAAAAABpLnAiCOVRAPx83Gwwb0kvgLOKYhqol-Wf8uU5Ukzx2aQKzPFs7_RVux94KMQtXnSSADEwU0bg1Ri06IpoyG4dEry6Pw==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Raj Kumar  (37720.0)
-- Employee ID: 101 | UID: 97 | User Role ID: 444303467162454
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
    'gAAAAABpLnAiIRAepIAZKKjzYAfcBNUBWG2ax-DckagPOZLkw2-GS53hc4gYSNSWrHdJkEF7M3_g8foXenpcOde6FH8v30wNMTcemmbpMx8dVvtBS2Cia-s=', 
    'gAAAAABpLnAiNYx_Ru7qdvDyw3ZD7lRo4KPKOJ3JoKc_B6_ZIfT8QbB5zBzXDXCCn92BnMs3-TNinLkfX7M6Y-qL28svj2umRA==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Maya Devi  (10173.0)
-- Employee ID: 102 | UID: 98 | User Role ID: 444303467162455
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
    'gAAAAABpLnAizeqtJRqf8iiW6TvBvP0mAT1q90WjpUQ_eFz1xyfHRdLBO-uxJtUVLC2EprmINmPmyTQDdpSr34lHHv2vjII5-n1V76E9o-6ZvZXuQdviPHM=', 
    'gAAAAABpLnAiiTDviiMBmeQckPLhro050XH7zWU9TfvZxn5eyiQWhro2uJ5461hf8tSg4O1LVoBDvq6YGBKumyEtOFNtS4EUbQ==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sunku Ram  (38403.0)
-- Employee ID: 103 | UID: 99 | User Role ID: 444303467162456
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
    'gAAAAABpLnAiN72sf2jQM76xqTqxKUwMLtWfpauLYMx9UrjgW5dcJZBwKYjAastlhOVk03-xr-3yc4QfM-2FrHWg21aN1kEZSOkbk_wczJ9qvOzMC9TICf4=', 
    'gAAAAABpLnAiQX8EQQjDPfkIn1T7y79BgzBSECJquphuu7vqp91HCw91cxNtg8OvAviaAsMUT_6V__iqPpVQZljxNd894K3_zA==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Priyanka  (51712.0)
-- Employee ID: 104 | UID: 100 | User Role ID: 444303467162457
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
    'gAAAAABpLnAidCe2g6g42MCSIH20UzAR_kU7WFkEK80pnU_7YwGNeirF6r4BlWgnbOKVRMCvcqJMpSY4XMTKNEZ9c6Z3VFJv4K1uZMGGMnU-9b9nMOaoDhQ=', 
    'gAAAAABpLnAiE2Ot7nCRXO25ry3Z6VsRzxLDBQDroI3heP6mGzxG7_YrXIlwwQvov-kO-XPbwrnLf_lFOuBOhdG3XMVFbUv6Sw==', 
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
-- Employee ID: 105 | UID: 101 | User Role ID: 444303467162458
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
    'gAAAAABpLnAiTRCg8q6_NEQTTGwPYIG15fkIVEY-FjadbuC0tWAtm3-sj9W7uTQTAFaf9QPLDvY5DtI-0Hqh4wW1JlLicBKm2ipTuD__0-dRkITN6ypsb3k=', 
    'gAAAAABpLnAiGnRxi96iHjro6a5MNW7h-5t5YyPjVGHW3c_QIBkGbEUAIvg1goaxwSWn45Bt5ppu-QYpH1dp6j4dE1LS6RCiqA==', 
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
-- Employee ID: 106 | UID: 102 | User Role ID: 444303467162459
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
    'gAAAAABpLnAiHMXeu3FiPJwzUW-jhls0-0sljx-VXb9kVsvLGqJWIZTzePC7mb0IebqVClOTO0duODNnvcGIyfSo5Ao879X7KBtfxXa9BumyR9sv_SPn-Mw=', 
    'gAAAAABpLnAi5sEmkjbZxWc9kVvxRDFZ5Qrw_5aMKHHPDcm8ppnaTo9xkO5nw0yWGKYFPau-S6JOk7Y0z8TM3XnGWyjNAjMgCg==', 
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
-- Employee ID: 107 | UID: 103 | User Role ID: 444303467162460
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
    'gAAAAABpLnAiczTI7YoUdk_z44zhvLLnnLrGzZfRdKe-Mmmla_TyynkbUqumxbImz51JE2W7-W5a68oA9wgoZ7MCsRQLtRkp5kurRqLcOEar1sjr47M3ULU=', 
    'gAAAAABpLnAiOval-tRDxbDnpzxKEGBO7xDM5c5NBydfMJSzm8DZGzQjEioHB_98Dl9G6JrxAC3DgEO_xgO2CaiTFT2N38JuDA==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sahil Thakur  (13281.0)
-- Employee ID: 108 | UID: 104 | User Role ID: 444303467162461
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
    'gAAAAABpLnAiq9q1NKfBgEhElTes-1aXfw9v6aLWHh8ElvrTYEsQxROauB2zLLWIOsNV4agSULTP-IS5aoXr2FT5dmGWqhJiCjPlVc3N0KqJQIvVxhl3_GU=', 
    'gAAAAABpLnAivtGk46WxCJ6EhlJcxwYWzarOlDN0FnCRm7Gi31_RNg0_T_xCWZnlUw8qb3BBxaR5L-AaNPBjRKbmRm1WvFW2gA==', 
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
-- Employee ID: 109 | UID: 105 | User Role ID: 444303467162462
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
    'gAAAAABpLnAiyzx6ptCp7XWZK3tw6IHsfZT_xAT05PF1o6pTqLk3oW1Qvf0HwhM4LfYeJMoafZnnj7lpnv3xLJtYJrtng9zvTXXuNCSraWH6fIt0Og8B3ZY=', 
    'gAAAAABpLnAindG2zE2UcLrSftP3AHz0GCm8TU0OWRLZ_VjmIGpBnaKmHPE1ILLK9k_KJmY06e5t12juKW3ECaRMQCIHh_ht4w==', 
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
    532193206, 
    385, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Jitender Thakur (55029.0)
-- Employee ID: 110 | UID: 106 | User Role ID: 444303467162463
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
    'gAAAAABpLnAi9NFypDeXEqayLVoGEY0ZCVLmOc7pBaCVl15TKDquS_7Tu6QL5SY_22GlMU9jkUsU-Wc6U4V9K6DGANRAQywgPscDAe8NDkunz8OPRzraTj8=', 
    'gAAAAABpLnAi534g_vuwb8JrvXOSj-aTKl0Pi8tJn46i4ctA6qacMjkIyqF4FhaPdEi5ifZgeOx2SlhXWPcEjTkhL9yfovxJdA==', 
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
    532193206, 
    384, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Satish Kumar  (45707.0)
-- Employee ID: 111 | UID: 107 | User Role ID: 444303467162464
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
    'gAAAAABpLnAi5XOktZz9oI_iVyxmmO7sBc2FgIKaGbFPJoDM7zNYbRuFO4nG-ZyMzIKVhE-ZKpG1lDMA0f9vPEVCjCftZliGqQqmLr9rmvwW-ObhE_fHUz0=', 
    'gAAAAABpLnAi2vrCkiWfSI6Ko2CmRniJbh_wm0Ucs7Rc8FI5PySWgShSjDnKIyIVpFDluZR6Qqg4_K3r3LDi6Gs3t3_nV4nIVA==', 
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
-- Employee ID: 112 | UID: 108 | User Role ID: 444303467162465
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
    'gAAAAABpLnAiAnL3MeyR2Wv9aNnlmZT9y-tqLoXLjxFzJNGNDPnm3sZqry6hyNHToeBViMSF5EuI2TQqPoOatPN0weYKt6ihistS4-VP5-FnjYCmaOiMn4s=', 
    'gAAAAABpLnAieSBUXdZyVVxqbOYHcKExdw1Ez2FaxiR_7Ba8_9nal6-NspO2ltKwyZF_VFT3gO9v90tsZ5scFkURCotrKI5-Tg==', 
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
    532193206, 
    389, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Bharat Bhushan Gupta  (54181.0)
-- Employee ID: 113 | UID: 109 | User Role ID: 444303467162466
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
    'gAAAAABpLnAisYBNqlz2uZvKFKyMmTsocfmh0b_-BnQrIcAgsyzr6oZx4nOoQVuOpv1r4C0iLcr6-SdoUvp1AO412YKpTZ8m_vnCSSGCsLVI--xz5JLwSkM=', 
    'gAAAAABpLnAiyGWwOLJaVAWtW_YmbB8VwIyIyxZI-y_0AeUvPvP49B9rKb3iN1KSVJSY85hyxtPopls1siEPZvbP0T3Aakko6Q==', 
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
    532193206, 
    390, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Yugal Kishore (52217.0)
-- Employee ID: 114 | UID: 110 | User Role ID: 444303467162467
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
    'gAAAAABpLnAijuSQhT_AWAD2qQJ-BAaUuYTNbyMjTEORyaxHmr45BYpxQuTMmb8pqBK3pGq0E4S6Cxo1dXTSnqhrp2znXn2nBLE9BJr-qZUIPAiWzIT-jx8=', 
    'gAAAAABpLnAii6kJU39If8T-PVE3slu5dFxtpLBvK2KY8cRwufq5ZlCPCUXeRltkkzhHisr5k1X16C5HyhH6aXJ_H5PT_iut1g==', 
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
    532193206, 
    381, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Dhameshwar Ram  (50434.0)
-- Employee ID: 115 | UID: 111 | User Role ID: 444303467162468
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
    'gAAAAABpLnAiWK5kgSgXti25GKNd0HirfLsDjTTjLR6Vy1h-TLmuGwLESYqDTEcwgWxJTx1HiVnzgCVEjR8gvgRYUPKSeSzMo04uFsfwzPvZ06-y_gzqWIQ=', 
    'gAAAAABpLnAiZ_l6GPiD6PzQgJcSjaQuGNuv_AnGhvhmItloS-BSr8YqmxxqdRzMWhBlIcAT7z8aAkT0Plsxznz_NwdzxFq-yA==', 
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
    532193206, 
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Suresh Kumar  (50542.0)
-- Employee ID: 116 | UID: 112 | User Role ID: 444303467162469
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
    'gAAAAABpLnAi8GMMXH0R9u2uy4iLrLjhSlXGEhmMRp96sFS-MBlof089ZxP46DhItBOGsFin5AWZpp17RitnppSzYepaEctW5arZb1EVJL1VYfEXvlZ4iWk=', 
    'gAAAAABpLnAiJ6M1inihfoeu_fZZIuIzLWN_SCGT7bxkKglvhcqO-3McxjDZAJI61KxOxFnguv9AGhXvZW76HpXUwoRyHWlhnA==', 
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
    532193206, 
    386, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Manoj Kumar  (38013.0)
-- Employee ID: 117 | UID: 113 | User Role ID: 444303467162470
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
    'gAAAAABpLnAiKUctXi3bXCgoWyZ9or3GuIcCdaO_n2QlAuvc6zlyPfVWM_3x42_OBFsaSTCE47GmjgMlQb_o74Pl8Dt8hPLw41tiegfaDWp-p97eTLDi7qc=', 
    'gAAAAABpLnAiz5KiqiudswW4YM9Hw-crWS_WYwXyXtoWZqKs2VRYFnAZ4tgUBsrGRquaJasSGStVCJTEyyjWdNqwrcIlmfCMsg==', 
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
    532193206, 
    387, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Pushp Raj  (14559.0)
-- Employee ID: 118 | UID: 114 | User Role ID: 444303467162471
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
    'gAAAAABpLnAizxiXvgHDJx1iTkKFKc1goTDi7IlTTtj37ULXSmkbIzSuf3tO_6-RAUr742kavk5A8KOo-ypLDwuhGquEBTOuHA0Uw5eMxjqK4g20AtxJcWU=', 
    'gAAAAABpLnAigimBJ9SAr1MAQmawQatCIYH206sEHyPb_GWnrVFxdAA_du6las0uPOKL2WOt-AnxpmyvBP-XWXjmQ7P3HqOkvA==', 
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
    532193206, 
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