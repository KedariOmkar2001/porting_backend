-- Generated SQL Insert Queries
-- Generated on: 2025-12-02 11:07:59
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
    'gAAAAABpLns3Pz1CjxUNzwdv4KigOrL6ffllSEnfi4R8cRNWSP8mK0ZU0x8BT-ICr9qCWQtYUgxaVi5Kt_dBNUXeFrNfi3zRXulLgDLqE8rOQEnAKVQtzfw=', 
    'gAAAAABpLns312v_LH63tGDPLSTj2Li6Or9xOZcP35YWBObrbD3of0AIBtG0OhvnoRSNsAtfkQAcK8V5ymdjNkKPT6Q7vN-1uw==', 
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
    'gAAAAABpLns3IQXvP5GBoQMZRQ9mliBqEisz2wa8ZkMFIsoRLgFLdVT3aaie5NdUEclRyjNHovZkA4EX1Kn5AE85zxe5DUxX_RUtOD8tKYCu3Vi6QUhGWEU=', 
    'gAAAAABpLns3yrVmt5ZvxHwBcaT04GWeDmA1fjLsxy0ctV5Zh_2U-6lDYnwWQRhm2zkT6ZSkvHHgWyrzzPB8x5NTR2qRywowjQ==', 
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
    'gAAAAABpLns3P70UAxCpA5FLnOvYExTHisTIH7UpAwpBg-lFjoeTLaSCccClzLOmOqMRLbwwuX9pi5P6k1Jys2iItqca8IOKqjO43Qt0TK28BqKdsEnRM1I=', 
    'gAAAAABpLns3ebzsyyeeYlw3WEwIb--232UHkkDNXdDOpSQ3CTQSNWW_qv4d85cuUUCkYM8HoGTd-Fw9YcoqYgdG-6FAgKRmbA==', 
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
    'gAAAAABpLns3-hN2FASrbqiGN0upgYv1NxONatKs4mJoCL__zFg52zqcr-5gVskH5f1P0K8kPoZYg-H2HOL4aIw-SBfu75PwGBrkeWi3K3ii7ypACVRLGWo=', 
    'gAAAAABpLns3IbB4QmHQiZJzJTgWlUcTTFmCYqoMXqqIfT6_xQ0GhNpJJIy7ui9GRVeIfHUyNLT8rHajllfa5gLvqXnx7JMp7g==', 
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
    'gAAAAABpLns36ApJuPKCxHlqAtgXksTmmWkFZs0wziMtuiIZXrMPWq8CVnkm_b5fW4WbHIAOwmfr_qkEcgO4yZC_9m2vCE6D48_vWC0Pp4cYqKUu8LWQdRc=', 
    'gAAAAABpLns3lU51NnCeIPaQnkdcU0jhPUTYf_9BSwSNhDB_-Q1_pEJHfjy5Wuoa0oj_4NyvGY0R5TyG8omFUcN2h2qEa33bEA==', 
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
    'gAAAAABpLns3kWsKRHMYvlG_2egGEWxTZnYUXwdaaMhhpva1_9U3BB9wXZRXCSJ4LXGwQw61p0v2KJLZVEKJKlVV6dL7f91UF7KjhsRa-6zBQtZsjWJa4MY=', 
    'gAAAAABpLns3dZMHdn5-xClAtAXoYuucCkTJ_0kMNTnz7ajgG3lrUtjzcBV2KeTSUlJAyeVZXFTcI0rydzDikLhQYOloblKo0Q==', 
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
    'gAAAAABpLns3pKnMrnS-9L2lorgRSOc5ETNc4sU9RhEfiEo5Ynv8jUYuLYsVnZZn0uYd3IlfyCNci_tMyox8u1xVZGjFLIYELiyf-kEu98K_ZIVhuak7dhc=', 
    'gAAAAABpLns3dcOEAPU2ErxB_STrqR9UojS5adTqc-tDmUMz1EnZkj6in_DgHIAp9lpjM6HuD4jBxtFmsRLNmdJ1VsSAUhJpiA==', 
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
    'gAAAAABpLns3KApRWpzmeZUps96ZXPV2i9f105_V2PQs95p3TfttZEagEkE7dAFVCs5NNLMEtjfapH-rR6vVCckSMM_fPadqNK1UXz4Rf-oseSbUeIp5sx4=', 
    'gAAAAABpLns3qh2GYfBnN2WX9Bl6HtTCzO25yuSK5eIVETRWwpIHKrhRpEFnNFcrjHDM_62reqPF2x5YzQXAggKH92Jlf0U7Ag==', 
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
    'gAAAAABpLns38eZYgH3nqTRdragUYAPOpC1Zl74AOClK7j-zBKakgJoEZWAaIG-hnMz75JhaA0fP18n7onqiq8K_xqEjnmNFTBWT855P3i6u9RFjj8h5uQ8=', 
    'gAAAAABpLns3dbYqQ-T5WWGMQ5COVxDhNM3a-DnNsOOgWOXsTmSQS-oN5sYteQsNrIC-i3uAZMluZNXC-KLRDQ5AG8N8my56Dg==', 
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
    'gAAAAABpLns3b1HacYWxne7fwJJninsGxfz8Anf4WB569vNFsLgMBieyyCcKMfDoeCjxL4v5XzYV3jVQQaDJVKdY358zMNr-diI1JbX_8Y_iMuFAT_HYUqQ=', 
    'gAAAAABpLns3QGmNV3hbUbfNWo0qORoqYP09FxFieMvhTfkK8SH9J44TyBH2LOjVwk6XSoo073_V8BvJW6akGjdLlv-FV-ZYMg==', 
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
    'gAAAAABpLns34xennb9Q1UWBvJLB11pTi_1T8Y9CpsgDzogRYA7N9-dfCM10NQlTedygmPtLbeG8h6-i3HDumxAdul0Wggfm_eCvK151EpkIZUYOt4ukWr0=', 
    'gAAAAABpLns3JiUCj0hAyafAu1Y1CfRYNsZPs-2uv93fYiEqdCrE_GMFWCOlwXtkdyVqDbZxiRnPQ6UVeVkPf0AadV0Eyna9QA==', 
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
    'gAAAAABpLns3n7HJiH-ziiME4jDU4AysyYIXkezmjO6tDt5WpjETEeAjXGlkTK6AqAVLTG0PDi5C9NjlrGhDiuEKI7g1qPGJNR9cKqsLCcYHCQp-u1BN3lk=', 
    'gAAAAABpLns3LJHEJCCxd485OXK9CAmDqWG4FiixdO6C_074REUI4ZZuk0qiBL2MJfwsiDFDUAkTPCM7kdFST1eRi1lUqJXiMw==', 
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
    'gAAAAABpLns35e6LDjQOwJGgDRHuzotu-0gs2-rj-97CXJwwHXgDd6EEnC5_MDgNjb_g86pRnHRxyG2LIO4e2myWy9Jtb9WGBDUcIKCOvg5C6WoLSFf8-9Q=', 
    'gAAAAABpLns3ty_gnTO1SkGkfDmmhovtpXmIuOIJWEUHzLGLCPiCyXzoFoQFuIRkPoxjonyv_vaQyydofp40EuyZwqhVPt_Amg==', 
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
    'gAAAAABpLns3SK_-MjdKnJUY2IJ1mRKWSMyWy0qAmR1pQ3qL_I8pZQQ8sXiXcT2CKQZp9k-9l0Ig9EhtBy7PZJCqFjZaPANxCpgyntPIFxnYrJT8KkgsK88=', 
    'gAAAAABpLns3B6fP24Rm0u4-4g1RfHVhcLjBCCvG8_2128mPWqIzMXRL2o5KHQWj0owipa7-xDNE4yibNyiqpSM_iUGLwZQ1Lw==', 
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
    'gAAAAABpLns3n8TBJqIR9YkwpQX4_EiA8AuHmX0hYEOX8tYXCyzfswH8m2RFtTSqWnXEGUc2qcXC5RMohCvwJ9bH9zmWfGfJwSMhlDYsiqOKOK1OS_nUpSQ=', 
    'gAAAAABpLns3JTSMaQ1Hdce-Tkxz__1r9-h5SFAc5CuHepz80GL7NAenJwZukmbOmOuEtc8korY8-iJxH5sTrG__Y_o-xzC4Sw==', 
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
    'gAAAAABpLns3LXlqRKOD4YNWUGPklNI0dAKnmc5im_lT6h2TvdQlxdQbteFXeQR0zch5YTQlyAQ-akimkbSUB_rgfJhUIytefiYFbXM1SmVeQXQuoKCg8ZI=', 
    'gAAAAABpLns3cM4DkMxE3m2Qj40ToW_5zO-_PNV22-Napo7aiXBqV9JLjDvKrtA0xfrItwlRuoOz8JNSEsvdy_jjpgSnYfQxVw==', 
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
    'gAAAAABpLns339LENBFKeniz_laD-yj_z58vhfMYfaoMqXsvpKGeHICCU3aX7pExl-AeXsYx08jWqY9JaU5ZJp9vl0mbgPoZ_wuOi-B4zD3R02cNZnSLtwg=', 
    'gAAAAABpLns3fKCqse4O3o2KfZnrHZRGQLDvRb9Pl1unu5nxKFcwEr9YobuMv0IRnEshHHkJAxoYzWcIhYjBs2BDJ1MHfv7N3Q==', 
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
    'gAAAAABpLns3E2OW9CPHII0h38zDMq3THTk20jWHDYdepUFwg3Kj3zDLesgbchEwy7C3ugEqaHl11ggGe-NMGOlJ2A2hK3MeD6pzIUaa4PKHggJcGpYN7eY=', 
    'gAAAAABpLns3MQuz_YS7WLt7YFMcg9P_6N9Z9o0YLx-nrjfHZlcW5_S1VRkotXBU1rJNlrxZIQPF19atxxlDUmFy9uEesF_KUQ==', 
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
    'gAAAAABpLns3S3O9wwDq9pxZBsSFn99_2BKDd90qPjSI6TAMz2z0NUBSDGcvIuX5X9SNwXp_A37P_UTtNGqBThTq737P7Gs_BnOJFvftwoea9NI6hWdmQHQ=', 
    'gAAAAABpLns3pIvsqi0tpNmHuNK301qpqKebTxuF0a1hz3MDv5au7QNKG2nxmZsykPP-djCw3QfYspHnt7gMq-oL9e_kaPACNw==', 
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
    'gAAAAABpLns31fhyN9ZZQn-VIbyBxTsyrkxj2tmOGt9xEqYHU3gJFlytAXBu-K3kIUeHPN8GZ4LDAptzyYoG0hd3v8z-GnShlqQJUGEq5Oh2o2VpFW5JiOk=', 
    'gAAAAABpLns3Vm1PcGOhtJmgGmxDAJUipOcXcJYWNinXcEEIBlwCNXz8RrOqB9_dlOlj7vrk2NZCld9fdQRtD9UU2uV2z-mxMQ==', 
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
    'gAAAAABpLns3_rMJuWkf1dtShvan8Bs5LiPZ3oulLxWtN-LW0RpW7Z-LhiOWQbOKTh245l1uDoLH1Wk1DCYl9R-zPjrAVJrqXwH8bFVhfAQ1BaJOJ78ttoE=', 
    'gAAAAABpLns3ZAiBBPcAwuIWOtWXEFibsjbp0zLQNdT2nAMT8slMwXxEmM7RSer2Xu4bKw6eDKMJ6vKavmmh7M8QixNYzbTdYA==', 
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
    'gAAAAABpLns3-O0IsXJ2xRvsZxMZnQ1Zc_82lc8kCjXDJ5vMsx47EiUQNOB5MgJweMw6MmWrt9bsBSC0HMylxnYv_Rcw06V5u7hjt-2DaBsnZ-NbTMkRZ-I=', 
    'gAAAAABpLns31C9Ipbr2zGE5nxVjg_5ZXKolZqLeRUb7vGdd3rkLLC20uFiuo67eHSfdg4ksWwvyvp7NDa30w3hgxLUXlFAHFQ==', 
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
    'gAAAAABpLns3yr8pRqXQUKuMM1d1YLvBa5dyxADLJQkw9dywFofIDz2T5MQVVxMAbVX0D8duj0zWgu_aWB4TWJNG1pEM2XEZHSMlKVYqLQ2K17XdNXP7N7w=', 
    'gAAAAABpLns3UwIsEg-naLnbyKrpUlpPiWO-D4IzZ1mXjFcfJgeL6gRr1VN_mPI_YRJIaQu_fpq7FaKvSC2PcGAEj4ldzCIQSw==', 
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
    'gAAAAABpLns3eMRQ3zwPm9My8E5jDhW4WBJNr-FBWGiwc11ifvsz4qiEUypoB0Rv5cS4KgTJAVNWFQT6pFlZpX63FP0TlqnQUUcKxsk3H2xyCzVZ_Bl3MlQ=', 
    'gAAAAABpLns37MLisRbrMoBAfzVS8965W6F6Gc_rmVGAg2EMMsVGyfz3Jik1CQm2Ma05Tnp7HnDHHVOCpGPYH60qLxKpelQziw==', 
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
    'gAAAAABpLns3BDy6_jBVG0z0ouo1_st_scVZwSEKmKiaoZuFqUyyFWVbbVfNLdIgC_9zG-_ZUH5vE-fheAup0QcpiOYau8eJsvHP0mcL7wBdcqUeDZfZrkQ=', 
    'gAAAAABpLns38Afr38bYt6OIy61l93UbRk87LPLYUt0zLc2pcJcvHdpY0IkbGqbC62V_uX1FsTuIgJeQe_gdVLzjEmm6_B0MlQ==', 
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