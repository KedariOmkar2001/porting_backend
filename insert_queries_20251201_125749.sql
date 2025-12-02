-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 12:57:49
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
    'Y', 531773952, NOW(), 531802112,
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
    '0', 
    'gAAAAABpLUN1hyIEOFjMhy0KKnjp_N6RkPvK8Ycwdil_cS2O8TA25jlqdZYRxFiFHODtA8KJe_lnS0CN_9-u9cr-l5Kpyz9LH5-NZK4CIW8f92BCQH4pcHs=', 
    'gAAAAABpLUN1dqRYQO8OWMO7Nfec947Jx1vldL3f3w8Zd06BkXawgDWxv0Nry7Xf2dwEovLqdAhismWaKcADofvXU8iNEaV1zg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 531773952, NULL,
    'Roshan  lal Thakur',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    95,
    2,
    'N',
    '2023-11-13',
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
    '43731', 
    'gAAAAABpLUN1wKFQRP2AGW0uvXRLZO6lBJDqpHneipmPQNJZEA3gX5lHS9uf0EryurROXR9Vo-LD4C5x5pIo8k07pZeI9CvmRwXV2dqVaPBAqTFnBWnGdUI=', 
    'gAAAAABpLUN1KST5G599jTPQasswCJtzJFnUTyS-62UYMaDgDkPRruRHd78Z4ZRSX-oF2TUw76nDukOhkkvw-JkmA-l0z2GxvQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-11-13', NULL,
    NOW(), 531773952, NULL,
    'Yashwant  Singh  Chandel',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    96,
    2,
    'N',
    '2025-07-08',
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
    '49772', 
    'gAAAAABpLUN1vZh5qGVd7IS0c2s430kz-nILRMNX3zlQAugGQSrXp6ldmEi6pmSRCuOxQA2ZXk9xbUx0t_jafl2j2Xe17Icg0NTaNpXaGWhMkj3J-wG1c7U=', 
    'gAAAAABpLUN1kQAp-zavTQtY0lRbA4V5WEjWOnbsqZ7c72ijwmGGZMNESY6NRm4rHGPVZMpMSHgco3E3t4IxKS5DB3BO25ITFw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-07-08', NULL,
    NOW(), 531773952, NULL,
    'Kamal Kishore Gupta',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    97,
    2,
    'N',
    '2021-09-09',
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
    '12137', 
    'gAAAAABpLUN1bG0wQ6mAVNdFkhD_CjUwCY84zqzSND-Q38Z9HDoDnxNhrSif_esHyfaCz2N0Z9lyE_8vK9ddsuut-3Sxp1mm9V6okImjRlahcWJ8w90UypI=', 
    'gAAAAABpLUN1XfN28cUt7QSgNcwp6dXLV_jZg-oF2D9S7p-HDjl9hoZPqtrwH3MSs1p3LIgVmBhdkcQHc5ILlhFfZoFLzNs2zQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2021-09-09', NULL,
    NOW(), 531773952, NULL,
    'Sanjay  Sharma',
    'ASSISTANT ENGINEER',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    98,
    2,
    'N',
    NULL,
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
    '51268', 
    'gAAAAABpLUN1F2Mu7mAr58Ph0MZkwId25Xo0G4bo3xFo1n1FJGJgWc_IvmhAPo3CASTeNPo-qps9oyztMKweARnSh5Q73mqgMhYUgCut9eVlrHyKCanih0I=', 
    'gAAAAABpLUN1Ma4ON0Brku3AbsUyeldSCL7ndIjYxaRhPhKqR6PGLwqpUsbxnQUnDts-46KaS1pFWVREOPyw6m9-HUsg0CZESg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 531773952, NULL,
    'Sahil  Verma',
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    99,
    NULL,
    'N',
    '2023-03-20',
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
    '37772', 
    'gAAAAABpLUN1za2JC4_Q0dCriF0rKdaUAOdIGj3EduvGWpr3lDyX1nHa0zAQbs5ZmmJbGTHxVn5fGScwPPmMhTgdAqCgHY2KHu4y2xIye_5e1muws9gGXU4=', 
    'gAAAAABpLUN1SNOEp2bUSN5iOWs1Ialhy-tcjztg2B0rPvB8qER6p_vCy5doY-5Fod-g_EMthWsciQqi--Log9bqw7tJCb_5Kg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-03-20', NULL,
    NOW(), 531773952, NULL,
    'Vijay  Singh  Guleria',
    'DIVISIONAL ACCOUNTANT OFFICER',
    'HPPWD',
    531802112,
    NULL,
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    100,
    1,
    'N',
    '2021-09-10',
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
    '51188', 
    'gAAAAABpLUN1wkO7CeJYa2GyWcjQ2ZHB6B0Paw2257kRugMPkwTYj3Sb6BELEYxjWBmByBRFWIGzPRLKA2Y9K8k8QG6BS4yd4QhVZwQ0tX6r6QNTDxLTL_E=', 
    'gAAAAABpLUN1-0tUn87Uv36FMG6sRY3B399f3bgdHSMKYh6pdBLJLOEk5nLkiZnYV7ASwQsXXpS0pJrjkH3cROorNHGJGOcaZg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2021-09-10', NULL,
    NOW(), 531773952, NULL,
    'Sharavan  Kumar',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    101,
    1,
    'N',
    '2024-02-29',
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
    '53518', 
    'gAAAAABpLUN1_fvljpC_H66oEwqdFVnO1zf0e42TINanzM1AEwOAFDE2b2TPzHjkDT0xJZ3xUuCkAnzHKtgX001-S9SLgupvDEmW5bZrtz_uvLmc7FMCTjk=', 
    'gAAAAABpLUN1GGCyte_UU41NXI66KvxDqWB106g58o0_b4xd00lfQZ-XtwxSZeQ1lgpbajH50xm3N6_Co46mmQv4YfH3cb4PtA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-02-29', NULL,
    NOW(), 531773952, NULL,
    'Poonam Kumari',
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
    'Y', 531773952, NOW(), 531802112,
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
    '39481', 
    NULL, 
    NULL, 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-08-02', NULL,
    NOW(), 531773952, NULL,
    'Sunder  Singh',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
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
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    103,
    1,
    'N',
    '19/05/2023',
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
    '55842', 
    'gAAAAABpLUN1Le0wmxGgozhkGGW509juUdpa1Fq0BliKMuFhT-Y0huHDp7VA2HobxaCESmTkDEppTbFqAN1fsgUnh36jErbUSOj07bw-gAZVZYW7aBtVzt0=', 
    'gAAAAABpLUN1UDGW9d4eLhNiuAABJtME17gkAb56wjY2-1ekpTjNbyuqJVm01nfOab9-0GgcvrYxnMR5JmoBis-cNdsEi1tlyA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '19/05/2023', NULL,
    NOW(), 531773952, NULL,
    'Yogesh  Kumar',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    104,
    1,
    'N',
    '2020-06-04',
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
    '53792', 
    'gAAAAABpLUN1hE6ALyUQ0wH_9qRngstQfe-74JDKI9NR492QwNzUD43NnDUGtlhb49Q9bOGpnljDyqsSheThFHRRyvrbRT7pKiXVbNcORV11dXu0rUzjv7c=', 
    'gAAAAABpLUN1LE7Jt6QyzVOYWeCrea9j9Jn0bya6HTLc2EZdMqUNt2pLEwjNybx9-ZyrOhBKJ_GOvHqtlFwTBAdRTsNwDGCABw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2020-06-04', NULL,
    NOW(), 531773952, NULL,
    'Prerna  Gautam',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    105,
    1,
    'N',
    '2024-07-10',
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
    '0', 
    'gAAAAABpLUN1S3vRETmfhjbZnrBUg9O6IPjopuwG3toTYKVmLAOc8xq-HMuPHoYM_fN7NqeetExv2ke4Z1jFyngipbra3vpkQFxal12yFUUZPx7drLSmenM=', 
    'gAAAAABpLUN1v1MzvYk32SWamrbJWeEq314pTbfGbUYBcHQL5Pyo2YIZxYytObJwPvSSl7czdINyu9QaaGQnEC6t5h2R8KlFzg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-07-10', NULL,
    NOW(), 531773952, NULL,
    'Abhay  Gautam',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    106,
    1,
    'N',
    '2006-12-29',
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
    '20946', 
    NULL, 
    'gAAAAABpLUN1FiHwT-Q7ny6TBBB3WtlxcS5eIjtJUebzMUINLXwdOUGzInXazfpAWmtTfnDUh8RKpbJ-ZjuKEa0bvSgL7s6lBA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2006-12-29', NULL,
    NOW(), 531773952, NULL,
    'Meera  Devi',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    107,
    1,
    'N',
    '2024-02-22',
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
    '52166', 
    'gAAAAABpLUN1AB4lDdwTZAXwSENb9VHIovJGjL7P-F6hTsWKizjKSYSbwFjHsuUeowgfO7NZUQp6Uny_D_KGHoEFr9kfR_3vItkY4svdsKzT-9BRXyTeLzs=', 
    'gAAAAABpLUN1ZQdrs-njtJArG2uRsxN1tvTFBS9UDq0g_l6a-AGLMv05xRXnGA3OmfaO4P1BkLNVvXbMrOw4IjkuB7_mQqgQrA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-02-22', NULL,
    NOW(), 531773952, NULL,
    'Bhupender  Kumar',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    108,
    1,
    'N',
    '2023-08-02',
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
    '56567', 
    'gAAAAABpLUN1l0cYiOHbPY_gBPFn3gR_zY3kTRaLi3IAxPQMWZ4byFa7yR33FDvTTgkFTS1HFx2ELDpUYJDPseeNNG5HsDYrqihc0DExnbkRM0BpA8jIXZA=', 
    'gAAAAABpLUN1o7l-3XD5uuYa6V39jJRFoVfmRWdPupNn78i5gmI7-nJz_T1IXmzEJhlt8SqpFeHQM-JIyUDQOEWnyt6vyW8GFQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-08-02', NULL,
    NOW(), 531773952, NULL,
    'Rattan  Singh',
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
    'Y', 531773952, NOW(), 531802112,
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
    '0', 
    NULL, 
    NULL, 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-11-01', NULL,
    NOW(), 531773952, NULL,
    'Sanjay',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    110,
    1,
    'N',
    '2024-03-07',
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
    '55835', 
    'gAAAAABpLUN1jmfBkzlIhTaf6mv_Kyvvx8x2m3P-dCGbMY5bSv4CaZIZs-wU9Hr6WospZW4T2nSg8QgoZBlWrQjlgW_Ao19df_r4EV6dbrVv3Duxqx3WwSw=', 
    'gAAAAABpLUN1kA1zyiTIuXrjQlH_BUtWv20L-HxafZN0QUtyDRwaY9KgcSXibF9CH48_vQq6BlIJgPYcLJO1j0w4FGssC-VrvA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-03-07', NULL,
    NOW(), 531773952, NULL,
    'Krishan  Kumar',
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    111,
    1,
    'N',
    '2023-10-05',
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
    '52750', 
    'gAAAAABpLUN1tdPVR5PylOPbv5IDYtR5JWkDlGURB_0CQkK7FPjRV5nreNyTfpkY6852qraL-7jKvUn78tLs116S9kjbgH8DpovdAbr3SibG8P_vxpa_DaY=', 
    'gAAAAABpLUN1EzCuo-icmUSZnP-BeyVwfa8MfJw0BSO-dKIHF5Hd5NhcBBSwmwMh2vSaLHSDM-A-fhvfCetz0gPcBMeyO16EXw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-10-05', NULL,
    NOW(), 531773952, NULL,
    'Rohit  Palta',
    'JUNIOR ENGINEER',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    'Y', 531773952, NOW(), 531802112,
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
    '45861', 
    'gAAAAABpLUN1UUzBu5UGZr5uVOZBfyqUI8Kqo9mnnZND40GPEXNJRU3hwz4oTcxIv_5FB4HxMwZf_zOBBIulwmiDuKS0AvzPJmu7Srd75BxicE_966P7IRg=', 
    'gAAAAABpLUN13Ls9Icx5u38OuLpkjTglIZRYpKsOngxxOF1IS7VOm1pML45SMibQpYJW2E8nXtdAj3-G_Yia4Gv_auWV1Fe34Q==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 531773952, NULL,
    'Tek  Singh',
    'SUPERINTENDENT',
    'HPPWD',
    531802112,
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
    531773952, 
    531802112, 
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
    'Y', 531773952, NOW(), 531802112,
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
    '41661', 
    'gAAAAABpLUN16rd8mnDzGOkWo3kq5YZIzk_545fSWyokxkVcX30BkpB4grK177Vl6TFhr3WJaJddsTQPNreL_yeln9Zirh_ydelvKyrJpoB1GXdJ2_7rScs=', 
    'gAAAAABpLUN1s1rf9nWSEAYAfeCoOuMJCoiQPlW2M_iwVSmfc5aw33-wD3KHYl2eoYQBpPqFPC1R3tFIGXkG6VqdpuOxnr-Uog==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-01-17', NULL,
    NOW(), 531773952, NULL,
    'Pankaj  Sharma',
    'SUPERINTENDENT',
    'HPPWD',
    531802112,
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
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    114,
    250433796,
    'N',
    '2025-01-24',
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
    '50442', 
    'gAAAAABpLUN15oP3Cy5-HZE_CYwz4OhR4MVmde-RCmq2tsc9r7s5PMi29Btgmce2MVkuug7bvelQCZdm4loDywat45jHmVjkvpQ5erxzdOiUuE5RN1THX8g=', 
    'gAAAAABpLUN1YlUYeVhnK_WEkeVNHH84NExobz7c0FKoROC7VKUpS0pf4N2I4870FP92kRBk4OI8EPMi_XAkgPLBDo_NO-3HWA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-01-24', NULL,
    NOW(), 531773952, NULL,
    'Tilak  Raj  Kaushal',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    115,
    250433796,
    'N',
    '2024-06-12',
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
    '50444', 
    'gAAAAABpLUN1dMADwVOKC9FeCojhcTjICY6sGQeJPLIKCyD237D2VEXb-JiTb3IqBHyRg3moZyiIS5VNFKWFCtZCKeH9okzYo_lCrZbFaI126FWyXcaKPYw=', 
    'gAAAAABpLUN1B7uShyIytkQwpgsYYA1_9Ga86rQ58DqEskuSYO1aJTC4EgjVExpEKbTx3bAzjx-xkrJP3aJU0Fp69ukSB-b1VA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-06-12', NULL,
    NOW(), 531773952, NULL,
    'Vikas  Chaudhary',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    116,
    250433795,
    'N',
    '2022-07-16',
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
    '52327', 
    'gAAAAABpLUN1_zPzeQ3P3q0roYr2rL9J2NGNWfQQkl1Ffp6Opo8kLMDZQB6SDz2RzL9xfA--Q1heIDIE_TsFF7NKIsET6BUAHqNmCY-HBPRoznA3KSKjhQI=', 
    'gAAAAABpLUN1GWyaHEVVMiD51tgpHtuJL6xMVMiklhYdTCLJzztd1ZYWffDNi33DErzdq88T6rFlIow2SPwBxdu2xc6oVkKKGw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2022-07-16', NULL,
    NOW(), 531773952, NULL,
    'Chandan  Bharti',
    'TENDER ASSISTANT',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    117,
    250433796,
    'N',
    '2023-04-11',
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
    '55572', 
    'gAAAAABpLUN1ELuqZB0P6FZujjflo7uGOeCYdBIf-ZXGekGTC8iXEd34CzSk58WtXk3Y4JfRtDmnJlOVtGUGlcxOimTB7r6f96q92kwuixhlC8oKyv9zfoA=', 
    'gAAAAABpLUN14DnlJsucB3IiYuEAF8AI2MJC_CrX0bkk0qqYEvmdUS0JrB5I1CiD1yMxOnQMBnmLC8dMMXFwwJsyc3nnHJbxQw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2023-04-11', NULL,
    NOW(), 531773952, NULL,
    'Devki  Nandan',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    118,
    250433796,
    'N',
    NULL,
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
    '0', 
    NULL, 
    'gAAAAABpLUN1zmUYPV3bxLw2eC8utdd3tDk-jHsRCWjNMYjX8M0ZTr1ITRDeGJyc-AdHF0oQngPk30YWnFTP7j_K3i-QFvItDQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 531773952, NULL,
    'Vishal  Gandotra',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    119,
    250433796,
    'N',
    '2024-07-19',
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
    115, 
    '43708', 
    NULL, 
    'gAAAAABpLUN19w-47qskvl7n_p4bkca1gEO-7Sr389VmSVeQ1cBKtLjn-i9cxDwNToaHxuzE6NkJlq0LlAPIaiUdoXtF5oF6mg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-07-19', NULL,
    NOW(), 531773952, NULL,
    'Dorje  Palzome',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    NULL,
    'Y', 531773952, NOW(), 531802112,
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
    NULL,
    120,
    250433796,
    'N',
    '2025-04-05',
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
    116, 
    '12350', 
    'gAAAAABpLUN1rUavSg_h2ZUhgltpVjGYbzwuoJxp9PfXoHsxqGCzm4DOTja4A9zFe1N518r-1Szebnj4AaizsDtGsj31LLC31xyo1xdFStXKf24s1RVz2l8=', 
    'gAAAAABpLUN1NbgSI6TNz60IuLHIiZCtb4EKFptUiSoZSxbGbXee7lun_9BksawJ69oqsaQxdsHXx2_hLxmEwnt-0s-PZOg-JQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-04-05', NULL,
    NOW(), 531773952, NULL,
    'Dharam  Pal',
    'AUDITOR',
    'HPPWD',
    531802112,
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
    NULL, 
    NOW(), 
    531773952, 
    531802112, 
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
    'Y', 531773952, NOW(), 531802112,
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
    117, 
    '50521', 
    'gAAAAABpLUN1zLzU_jNt04bZvxO6f4og5BD_aTyruZ88q_FKiXjuOusryVvAcr1LNBOJvvb0iw3VQ5uK34dT6xwgoZgQbS1jg7yGnYyvaq0J13IHIiqkl2k=', 
    'gAAAAABpLUN1XU4Rx15lMfiKyEvtGbFGhSnoBvIu7X5LIdhAMPOBtkH4UFxea8_c7YAZi_wn0vyCqXjyH9ORJbtkr6P4vfGcYA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2025-04-24', NULL,
    NOW(), 531773952, NULL,
    'Rajeev   Sharma',
    'DRAUGHTSMAN',
    'HPPWD',
    531802112,
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
    531773952, 
    531802112, 
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
    'Y', 531773952, NOW(), 531802112,
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
    118, 
    '51610', 
    NULL, 
    'gAAAAABpLUN1J8ai3IEjI_okX9aNistED0bRE7hoXHJNy7ORN-4Bky-e5oV8HxviTh7SNI3d1O28twutwpihphw20c3JgEFgOA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    '2024-10-30', NULL,
    NOW(), 531773952, NULL,
    'Vijay  Kumari',
    'DRAUGHTSMAN',
    'HPPWD',
    531802112,
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
    531773952, 
    531802112, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 29
-- Total errors: 0