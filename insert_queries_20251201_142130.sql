-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 14:21:30
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
    'gAAAAABpLVcSTMbGXdH7Sucz8BDH5fqbbg-KXo--aYNcKKffqCz6grKQJjwFVjdYyA168LCOpzf5QJ79Uc9k_RywTsep83olr17fXUgwaqo0zF4EjeQjXYk=', 
    'gAAAAABpLVcSQnOvEX13lRerzhXnjmLeZwXjc1xmNk84S-VSMhEAO-zpqtrCEeAW-bmgdbObH26FaxadBRMbPRwZLafKUZhMSA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSmXCmLo69DBikswk4gG74ny8Ttmtz5sNPhYbiHNj8Ocp1DOh81FeK_kwKWIQrrwj11MtJtrAJpDswW77ehrVlXZvOReXPXbnlBl5Wg3li0Sc=', 
    'gAAAAABpLVcSzQ1A0MvKNkeL3IfHYqVJbantHfjTfFEClk_uWuF8P8t-1cXlEYlLDkmOi2Ft82dF_nhNBL5t3uRMGI0NmfS9DA==', 
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
    'gAAAAABpLVcSQSpFh2QBqyJMQKic2FwJtYw5EGhZLTyjAwBRKVsEcpX2-wDYzp8YmX6UndHRk5uWXenr7vaLc3jSivyuhaiLcHIkfk9btmBgbNLVIBDeMbU=', 
    'gAAAAABpLVcSOe366597hq68YaP-nS72wx8U12TQUehUG67jSvP1Z-9asUXeF3cI19Lrjy6JHrQKdWoedBtcTUlxmMTsALsQIw==', 
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
    'gAAAAABpLVcSFo40P7ghBwi3N3yA6rASwNyLuUG11T9_vUPWG4I8S679jqi6XOx6UTp3KQoHIyrd_ZBhJLS7qwbe8c0wBDqAYMoJam3zRmBcK9tH64NBYO4=', 
    'gAAAAABpLVcSUmjA10rXZ-D0buYf7rKSCRBaFNHoKSsfOGoEOrSjva0JRe31X_8Q22Ccd-61rBPIpsWQSgF2y8LiYvioISwHMg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSZUeHqVjxoZoF4gtl5hmAlrB6jkScR4aVjKCVVtCGpwlDQARuvwFzYZujuKgmxNJ-flLM_QZrS57wbUZVVeppEFz7_TaH8PrYm_nkyLYyMDk=', 
    'gAAAAABpLVcSVpoMxeyouxkPNDACHPw89ZcXPjh_LOF-zs_k0urjjEkvqMcK_WjNPJGpYm3zFgyFCBCkg2KsrVQkysCDbsN-_A==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcS9zj62MWfZ0QM6_ynEWZkClK0w9NF7m5EYtPQ37b05s_JJOWVFoztb2wGZ8Y8e8hsaAwzE9azOvkn6UkEN96i-Jzwd2fbKsW1Ob07Wff9QYU=', 
    'gAAAAABpLVcSGC3ER6sAOK1fjsssVnTzFLimG2m7YNkdGoPu7hp_PFeOAirJD7v3B5K8wIVVprPLcWAe7Kq7cHmKjDhzcNWcvQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSJh-6yeWoIzvYBc85hJdL_xiP_9s5itSAAW0CQNll6H96ETU3YlK-qmMQWZ--wDF4-4TeEDXIWK2x--m2G649gwtqIMPx6swSBcZy3Ekej5s=', 
    'gAAAAABpLVcSQvlpdsejkNeYN4IUK3_kPuHUhHL8itpndd9U6qwGdR--ylB-Ve9N0nD4IrkcUk7-aU1LScsthotKn7fxfxsFVw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcS8Ij5K6tDNT_c9CGnZBQat969UQPRoOoMhfCKtS4DPGva6gp2OmWDF5zVussJvquU9MBR1zxaRGOvK5LNiD0m_mpKsUSysVQJu3ieECJGBkc=', 
    'gAAAAABpLVcScVMkS-K5fNVHKyLrV9XwYOI7CLfJJZUQ8Tbz598b04t0Iq10Po5aGC4hoBCQcmESK_B46BTJmKq93hBgZcmlEg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSOPfFgWrEBYtqwlOJrXubFXxneaV1Qj_k7xKohGIn_qcTCjZeIBTC2u1rrU8og3mjXPQgW-MZxjiHTCjvNVSYdFfZJqYJUTJ0K_zem62L0_I=', 
    'gAAAAABpLVcSIwvYkCAiiDwqGLKir4dG-lusT4H_J_xALmOidGEltL-Jr9uQv75jPG-zMfLOBleL9b4-painEwXHQ7AEJmbgsg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSmfZMNHzqRa6rJ0qke2p2jYyjSpvYaLo9cFbggbgrllmNPJW2CVsWYWafjO8GxKavJRq61q8takrVfk_tGu0Jq6bG3qqwKqyhGlODrs57JDM=', 
    'gAAAAABpLVcS3ZWCAOpGh3kwwBoLn2xdsDZ8R_DjL8IcECj2SXFLuXn0YVjRNNeGJBQ-Qg9J17nNGGnnqfi9dHyxrkUbctXZbg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSZ4DZ3do1pLsm4z6G7gM6YYxDpZLRaF2GVJA9aCAIlNOo-juJST1T9K9uJipdG-VzlBt8k6tGB3OHLyO7lf0LJDw9kWu5s9BVyIcTqXLVxxM=', 
    'gAAAAABpLVcSX85dtV8P9T6djlgcFUw2HTyOSMNb9xce_nGrVs_vHndH0wzu46FUOGad6fwjgvNu1EuGW97mwbr7CXHJXL0qKg==', 
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
    NULL,
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
    NULL,
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
    'gAAAAABpLVcSERWNckE-iZ2c7q19ToBB0mVziSuG3kZIwG6Z0S20c5ATcmzozSV8bs4wXEi97VJilLx73a035n47vrwxgyubyO8UaTDZUw5l2CqXMiCLUA0=', 
    'gAAAAABpLVcSx8g2b08WjNAfDcVMgAnb44HAwtTCjTlvTWaEiXcigEwlF9zNCDVNevhkZ68tpF0dWnvHL0E5YJCesDRqBIUM7g==', 
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
    NULL, 
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
    NULL,
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
    NULL,
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
    'gAAAAABpLVcSc-cNg9JimEfDeh3LcHakJsBvzU9HNWHJKiXkKTaRZQL_qock-LDzQYMrbNrhK62_BjL4A-RomY5g3i6XUOC10zsxHAlUpRXrRcXdtJgr-fk=', 
    'gAAAAABpLVcSv9kYebUFNEELZOjm9Hct-deOTPvZuiIaBb8KRu1-4QJUixH0uNjVxnyNFJPVG6sBei8THzWOWs_-CGwOw944-Q==', 
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
    'gAAAAABpLVcSnUil0BRsilmXFaljb7VFG4yRlWjTFxCYlMeuzPFVKtIBI3dNSKS943nplF9-_wRaW5m__IEAoKtExiQgqTyMCRNessrO2QWofoa5euA1btg=', 
    'gAAAAABpLVcS8NvyMtNB9JRu3ihFjzhaVjg_fJ0B7BMmlt-iORqKZMH-6DhHINsLch3TeIQG-A-Sw7HrvAVKMgrQk5Ttu5NzNA==', 
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
    'gAAAAABpLVcSYGsNfM5k30daIT-l1JE21c6OSGuee7yjNonFgYM2vn_TDgtg480fmoXcDDQGZFbVo9jsMoEEYADLKZPbNcYvW1p1xElFF3cMQeKkdwBLQkc=', 
    'gAAAAABpLVcSecAB8cPp4nmBq7W6d0PnietTnGddYtWZfGc_25vTLRBLRJz4RvmJYECBOLft1SZUsoyHhsl9u6HPv8KMS9WGVQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcScCWcm4mGyYHwH0JZHYWXuoFkz-SvF8T2o4rYDeIKc9uDzA4-ekK3vaorcAJMUxxKc0LcSJjGOkn7G5jFsCpac--FjhKPkkJ8Ae5cIFNjXXM=', 
    'gAAAAABpLVcSVCP_3OBbfwKxZfK5vPLQwx3VxSEMetInZcedN7N_QC9Xrp7Fvs4g-E-O6J6bkd1GIZ2k7TiH7rdnSj4RdKyBZQ==', 
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
    'gAAAAABpLVcSNvRp8sE_naJYoiIpRb352V-ZpPTWzIP4kyBS0P_D_bZzAijAq0T1GeBIosyMFKCB5nKxheqIfsHPeBcoCjbmij09e8FrSVd5oVDVrXqhQ0o=', 
    'gAAAAABpLVcSdlFfjeLnXNbjKcw4joZl2DDYrpuJbgY_VQw9dvlclP26uoA0wvk2zCcX7TjjvieBQZ3wcnFwSu_oKxvjHAxoGw==', 
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
    NULL,
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
    NULL,
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
    'gAAAAABpLVcSv7lCZqcrSsiv_2zAnHsD53e5KirVVTifcGvjGgk7gqBcsq_UQVQMH0IN3hgNIJ6feNFOE7U137wMJlilJLcE5ALCGBAftj3gsU2pk4a4NpQ=', 
    'gAAAAABpLVcSh_ALXLYCKlXRvR_1XECgKkzjraDVi-pywzHo5cgiLreh_fUFK2QPalR84L3ODgmuPvQjeyd9IUtl4GJ5dq4QAA==', 
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
    NULL, 
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
    'gAAAAABpLVcS40SjXeQqM-NjEJUaJGYb9PyGIunL5eoOAvtsTckTUuCNRF-S6Aww91lOOICuCTBZsG1DathFSNCF89CMyD893ziCDjwUeXcH6J9hfWz7Gt0=', 
    'gAAAAABpLVcSp0T4Fsa29u_oZCfptYKU2bcKXbdse3IyyIgGyAgwbHymN-DplJXDjGFxp1YzkOPeiEZWvmhL0WPRQXyERdsSUg==', 
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
    'gAAAAABpLVcSKoTSwwO5067y7s1wWOKqD_tKg7jkAVf1fLOELFaRIylLVdQdD0CFJDQkbyQEwUVEv9t-l41eyvylsHvePL6LXYh_ObZpp-18xDh8sG-7-Ig=', 
    'gAAAAABpLVcSH35u52yBYxqyQ22z1hW_z6YRGJyui3sLK9Zf3RMQ9yAz2tB9b1UiwWZStqr8F0HBh0cWTfHA40J3BeohiE_UuQ==', 
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
    NULL,
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
    NULL,
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
    'gAAAAABpLVcShiX9x4IqUqNkHah3XOjCB8z7RHV94RBvcTgn0w6TOIMdAha_0t6s5XFzHM-XdH9JVIPLkxszqtu-7LOyUfWAfXBL8p54Af2nHxskMRrkCQg=', 
    'gAAAAABpLVcSecKOEx65PWjAnWVW6R2yk3a638So3p4kZxbnpNcUHZV9CG8V_aRGBxXpICRqmOAmf5rBsRZnkXvAKe0k9XlZAg==', 
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
    NULL, 
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
    'gAAAAABpLVcSigMBKt1vMCVeY4gfeJ2EIxNHb4u6mt15d6yJM0RTvxmGoSHQu7Ml77LfQ61vEattK9fTrrffn8N_1dEDK6RSHxSzuvw-AyLPWNzdkuX8eBY=', 
    'gAAAAABpLVcS79Ch0P2VPlov0oTWA9y9O_vNUKY9JOGNsdXHWmWASm40w2F_oQCdk1Q70bvatbRRrugDTT05XzKUiHeqV5PUMQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
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
    'gAAAAABpLVcSUJt2pA7cCui6Wv9qha4HVyf-JJ1YQRKvpd19-nX2oD6Vwx4HkW2hJZQeCJ8TJoZsJZMFPFzz7lgBdkgl57CakeQpwPAP8sVwrxnujg3oUpw=', 
    'gAAAAABpLVcS9NfckpWaGxrw6d2fB5g64qBRzOMruQozRswVSUgkxmhBQ4cK6aWI4tT13wcHpzlEYTU2IAOHYfgAbWzK5t_3tQ==', 
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
    'gAAAAABpLVcS0AGfmCR98vTl7BirrbzBbFYaPNMvK_luKcXgigrvGsG3izUKYteTaUqArUz1LcWh49TVZDlZUqFrc_1nphNVo3KPue77XtyHMY9PbBWAII4=', 
    'gAAAAABpLVcSCaR5boRuRweuzmouGzDLzoFoMSrMck1v9GGSEJ4JOhlTIwut8JNHHmVB4KH0fG4bQsAHIT4ihdsGqMiKTAepog==', 
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
    NULL, 
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
    'gAAAAABpLVcSkam8744P3aN5yhLjTe2jlzfkQ3xJx2tCXhIeyuVz3pNDKUfob_f0xe-55kmjx5hyXnBQs-2rpGdqr-dACwRGeUsA_5UquQAH36zTdgz2Wgo=', 
    'gAAAAABpLVcSwOe8FdAa9X3mb9z3uWkoVwKk5zCPdLW-KweQ3NyqbDek4xnC-ystRu6aRI9VT_kUDAyZRSP2D-gQd5-bcdKnqQ==', 
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 25
-- Total errors: 0