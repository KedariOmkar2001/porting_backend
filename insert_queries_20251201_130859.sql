-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 13:08:59
-- ================================================================================
BEGIN;


================================================================================
-- Employee: Banti  (53981.0)
-- Employee ID: 2000 | UID: 5000 | User Role ID: 444303467162447
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2000,
    '53981',
    'Shri.',
    'Banti',
    NULL,
    '-',
    'Banti',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2019-04-10',
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
    2000,
    2,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5000, 
    '53981', 
    'gAAAAABpLUYTHFRzXWp_fC4kDSMv7cHHEfGJ6qp7_KCA5GIJ4RoPZtDgsyI5AeSGSqPHFAI5jXlRuXpRNv0zViwV7zyAb5AI95v3tixInqKhJ3umIB2HfaI=', 
    'gAAAAABpLUYTkmUAGMDbgGdxKs0tnChEH_KnthHv-3j6eYuT7QVTeXLdNafn46I2jNUQpGknhQKhF0AFM87ye2saQoX_ATxfJQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Banti',
    'ASSISTANT ENGINEER',
    'HPPWD',
    9527055849,
    2,
    2000,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162447, 
    5000, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee:  Dhan Singh Sharma (19058.0)
-- Employee ID: 2001 | UID: 5001 | User Role ID: 444303467162448
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2001,
    '19058',
    'Shri.',
    'Dhan',
    'Singh',
    'Sharma',
    'Dhan Singh Sharma',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '1997-08-05',
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
    2001,
    2,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5001, 
    '19058', 
    'gAAAAABpLUYToWVa7EW8XS-NRSWT1rdRTw54MicF_t45Da22pZL51AtH36Y_BNsuoFQmhN8_dSHXQAPluGyY0bVszC09axX5H9Qv05L_W9kZmf3YIsssu3Y=', 
    'gAAAAABpLUYTlssCRa3rziWKReq2qr5PAhUnk0h9TcJO-LZNl1We_0UBGoTSmi4CeacZJuBczVWxvi5hFAUSsYPTTW72i6zz8g==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Dhan Singh Sharma',
    'ASSISTANT ENGINEER',
    'HPPWD',
    9527055849,
    2,
    2001,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162448, 
    5001, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Yogesh Kumar  (50979.0)
-- Employee ID: 2002 | UID: 5002 | User Role ID: 444303467162449
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2002,
    '50979',
    'Shri.',
    'Yogesh',
    NULL,
    'Kumar',
    'Yogesh Kumar',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
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
    2002,
    2,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5002, 
    '50979', 
    'gAAAAABpLUYTD9Jtoti_zvXxyQJYC_3oqFqXole8zrjwcuMDgtqSzGRIRM0viWiB86F8oV9w9UiEUpg81dGTGbAuybwS-XBYQ4LIg7ggFTLfaQJqMFfcZPE=', 
    'gAAAAABpLUYTq5hJTQC2mMwC90aJXFw0SXkxbfNtqchy5G0NhNtRbKTYEDZAXkio9nvnV0QvEiCYGZwRPOZ9yybz8NH3Q3TwOw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Yogesh Kumar',
    'ASSISTANT ENGINEER',
    'HPPWD',
    9527055849,
    2,
    2002,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162449, 
    5002, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tara Chand  (54988.0)
-- Employee ID: 2003 | UID: 5003 | User Role ID: 444303467162450
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2003,
    '54988',
    'Shri.',
    'Tara',
    NULL,
    'Chand',
    'Tara Chand',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '1998-09-23',
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
    2003,
    250433797,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5003, 
    '54988', 
    'gAAAAABpLUYTC13lzN7gW2jeNALk0MVJjMcc3B4-R3Vt_pz6pv4ihUn7r9J1lbIp3bmsgK1V6q8Dh9FCmAtGWZ7Q-AhhdmPsbHIZSOhjGGwfoaUhRrOZKIs=', 
    'gAAAAABpLUYTjrc_9L8ZSxdZa3KW7eUdnpKycawQr8I4ZrI5sZMn0aYQFAt8dYvdJSd_qhAuZ-NCNi-vTrxqXmt0IMk8JMFo3w==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Tara Chand',
    'SUPERINTENDENT',
    'HPPWD',
    9527055849,
    250433797,
    2003,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162450, 
    5003, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Ram Singh  (47956.0)
-- Employee ID: 2004 | UID: 5004 | User Role ID: 444303467162451
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2004,
    '47956',
    'Shri.',
    'Ram',
    NULL,
    'Singh',
    'Ram Singh',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2014-07-21',
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
    2004,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5004, 
    '47956', 
    'gAAAAABpLUYTtb0sqsjyhDegI0OuyOHjnmYcP4jzvH8ULAn7SsQa56NTrPkGAyckEZOyhvVWp_XdAaXYEecAquQo8J0J9XiMvut1_ae0gzsVZxo31hoSD4Y=', 
    'gAAAAABpLUYTYtBlR-jaCrbXkL9XkFrKI7Rzd7XV4IhEGPR_oN48frfvwVlYGH2ZUE8hmya8FfDFslav-7ghR2aNuEeJzv1glQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Ram Singh',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2004,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162451, 
    5004, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Man Singh  (25668.0)
-- Employee ID: 2005 | UID: 5005 | User Role ID: 444303467162452
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2005,
    '25668',
    'Shri.',
    'Man',
    NULL,
    'Singh',
    'Man Singh',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2014-07-21',
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
    2005,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5005, 
    '25668', 
    'gAAAAABpLUYT_YPIPFlwN9Ip-1icLGVgLaGB2WYsHy_9Yaqoccu0qN-h_7WlMomorLMDP2zas0ZP8PzgWcZHWZuf6cbHnukdfWtJwvspdZsv_DpBst3Pc_g=', 
    'gAAAAABpLUYTWoQGgtwJ0d2Xw7PABTR4ra9M9ihlFP1bmXbL7ZfsQAmyFKH_WZB6dKlPQ6gqVmhzKxgYNsTMDvbmhp71l-26Lw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Man Singh',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2005,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162452, 
    5005, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Indu Devi (22899.0)
-- Employee ID: 2006 | UID: 5006 | User Role ID: 444303467162453
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2006,
    '22899',
    'Ms.',
    'Indu',
    NULL,
    'Devi',
    'Indu Devi',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2000-10-17',
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
    2006,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5006, 
    '22899', 
    'gAAAAABpLUYTHuAEt5Lr-2GJ_2pIXM3yGi8RLkwYWf1t0zvuEmCVKOIT_l9c4IcggR65jEcFnj4-UEfZwQnY-j5LnR0fNjhevEXv64Wdc2967U7qPyBZ8KA=', 
    'gAAAAABpLUYTlmxz2qVFUOBIB748CMYmDGmvCz-HtvnczLGP4irfHEMi5hU-Ukkv9Luv40S8VmG3E4ReGEGS9tTIkyP0fpW2Zw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Indu Devi',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2006,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162453, 
    5006, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rajesh Kumar  (50490.0)
-- Employee ID: 2007 | UID: 5007 | User Role ID: 444303467162454
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2007,
    '50490',
    'Shri.',
    'Rajesh',
    NULL,
    'Kumar',
    'Rajesh Kumar',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
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
    2007,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5007, 
    '50490', 
    'gAAAAABpLUYTYPv1KzhiWG7BNnQpSR_LOgHVckSC6gTC_qAu50QDrxmBfng4WLxtR-ZYKdkEiQTInYR_zD--oKh5BGRJqBeB4TQ0_dMupmFPHhHmuYYBwco=', 
    'gAAAAABpLUYTuMFYxXqmXs_N5OBJfkKc96zlpgCEgbAqtqWUQWavHkLT9p9LXXDVXktpyDRYBYPvOcM0bN2ir8p0kB4_76nUOA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Rajesh Kumar',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2007,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162454, 
    5007, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Jagmohan (51254.0)
-- Employee ID: 2008 | UID: 5008 | User Role ID: 444303467162455
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2008,
    '51254',
    'Shri.',
    'Jag',
    NULL,
    'mohan',
    'Jagmohan',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
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
    2008,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5008, 
    '51254', 
    'gAAAAABpLUYTZXHjsrtC7ecKGLQCXxXEwvrxZQQEIRB284LSgd3YCp2N6Oc4ZXm3f3wSbkvtRC69mXIBDQTF0Ev8b38Nun217MkMmTvkVVX9DaWIwOCh8cY=', 
    'gAAAAABpLUYT8gf5V3CrfxOyu-zZGImldldfSd-doTuTcaqkmWryqu54G32ZJnDkA6rlkU9RBanMi25Vo6Uwck6ZzefiWHb--g==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Jagmohan',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2008,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162455, 
    5008, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Amin Chand  (53802.0)
-- Employee ID: 2009 | UID: 5009 | User Role ID: 444303467162456
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2009,
    '53802',
    'Shri.',
    'Amin',
    NULL,
    'Chand',
    'Amin Chand',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2000-07-17',
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
    2009,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5009, 
    '53802', 
    'gAAAAABpLUYTJVylFIaYcfWRfMXO7oXEyMBeMM-u5aiISGIP59r2sOGrcStV_NBoAs0bs4dyfJ-sZpfIcrNMBMbyh4LxgJ5zVSpqYZYzDQXuXZFsM6eEwxs=', 
    'gAAAAABpLUYTCiv9jLAW7GEB9uqdybkCXuXCF8aCSAm11UPPzOxgJLnK5_yEEs-Y_JhyU5Hejdzrzhs7MuPH6W5_FLNyLTGq9g==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Amin Chand',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2009,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162456, 
    5009, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: HansRaj                            (23041.0)
-- Employee ID: 2010 | UID: 5010 | User Role ID: 444303467162457
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2010,
    '23041',
    'Shri.',
    'Hans',
    NULL,
    'Raj',
    'HansRaj',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2000-01-15',
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
    2010,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5010, 
    '23041', 
    'gAAAAABpLUYTJCs_vCoRH4V50ITCTF0EBdwOeBqJNpvRIlLj7ZVUNGs5E6By9DnA9y0cBNXXQjz00FwJhcW801FmAO5r5oAkuVkv0ZhxqdDE4qoA1_Qp5iA=', 
    'gAAAAABpLUYTGj7wYh-D3_i_oOXM67QYmeOZXFz00lrFNmHX8ac6anxPpsxf331v-NGYuuNiYPbhuIqO0OBpFr7fGIVrr4UHnA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'HansRaj',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2010,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162457, 
    5010, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Bhuveneshwar Singh (53820.0)
-- Employee ID: 2011 | UID: 5011 | User Role ID: 444303467162458
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2011,
    '53820',
    'Shri.',
    'Bhuveneshwar',
    NULL,
    'Singh',
    'Bhuveneshwar Singh',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2007-09-10',
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
    2011,
    NULL,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5011, 
    '53820', 
    'gAAAAABpLUYTEjPJBwAIBQatVE_b8sgvscR4RHmGysT-VaDcGopPHzJAQU2ilVfd53cnV30b2n9oP9LYMrIm4tTCRhCUCBUjHJMUlaq520x3WbhgM-eTPvM=', 
    'gAAAAABpLUYTcmTsIJH2J_j8vSE3YOm6bgkHmLSsuaBJepxtgXx83ItHpuoklsi8rmACub5dXsL9i4qQhY6s27kzFGIQo4DHLA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Bhuveneshwar Singh',
    'other',
    'HPPWD',
    9527055849,
    NULL,
    2011,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162458, 
    5011, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Chetan Chauhan (50651.0)
-- Employee ID: 2012 | UID: 5012 | User Role ID: 444303467162459
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2012,
    '50651',
    'Shri.',
    'Chetan',
    NULL,
    'Chauhan',
    'Chetan Chauhan',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2019-04-10',
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
    2012,
    NULL,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5012, 
    '50651', 
    'gAAAAABpLUYTLKyPu1RTrW0CtTjnGE95O2HGC0EsrsAr593kKSA03mRMdS-nkXa8LRpQauZt5QC4OEck8LK0G2fSCCEznGEAJdLLc1yVkdafgfwScnH-TMg=', 
    'gAAAAABpLUYTFC5dMZIvl0-UTTdJnHj7gSNiaT-gMYMyjvwBihn16n1CjXfMMpfg4iqfOeYFthXh1N9Klin72DDO5QY-stOh-w==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Chetan Chauhan',
    'JUNIOR DRAUGHTSMAN',
    'HPPWD',
    9527055849,
    NULL,
    2012,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162459, 
    5012, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sher Singh (57109.0)
-- Employee ID: 2013 | UID: 5013 | User Role ID: 444303467162460
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2013,
    '57109',
    'Shri.',
    'Sher',
    NULL,
    'Singh',
    'Sher Singh',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2023-10-09',
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
    2013,
    NULL,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5013, 
    '57109', 
    'gAAAAABpLUYT5GUZVI2NpSE_g7fEn2gBxtAODtaQPOE7RG0-ygMk7VA3UwLn9A-kJ0WD28TQVSdub1eWgX2QOEFKAUD9Qf-NqpstRXTpXP_k791Q3CMBWas=', 
    'gAAAAABpLUYT4G0Ts4sCfiYLhxjp4oxY_nQBNRo7p09AotY6My10xlizpsI_xh61YQ2DLs2kFY2fLfFV201ObRfptXdO68-biA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Sher Singh',
    'JUNIOR DRAUGHTSMAN',
    'HPPWD',
    9527055849,
    NULL,
    2013,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162460, 
    5013, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: LunaRaj (nan)
-- Employee ID: 2014 | UID: 5014 | User Role ID: 444303467162461
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2014,
    '0',
    'Ms.',
    'Luna',
    NULL,
    'Raj',
    'LunaRaj',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2020-10-13',
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
    2014,
    5,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5014, 
    '0', 
    'gAAAAABpLUYT12j6LEaoZnfxgMn35x0ZYEvJmN8RchHqyj-W6IlP-Wx-iTm2MnFRm_MzcJQqX59XYbXSpw1Med5oZX2z4yHsRg5G4pkGdLPjfLT6bbAZIm4=', 
    'gAAAAABpLUYTiVnMFrMaDbosOpWhyZMjWk0GXP_kPiIkuWvkM2T_qtB3rnJe6FGnnv80bcCdSgte3FJnrk59AUoAm05TCh1Znw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'LunaRaj',
    'DATA ENTRY OPERATOR',
    'HPPWD',
    9527055849,
    5,
    2014,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162461, 
    5014, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Naresh Kumar (16171.0)
-- Employee ID: 2015 | UID: 5015 | User Role ID: 444303467162462
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2015,
    '16171',
    'Shri.',
    'Naresh',
    NULL,
    'Kumar',
    'Naresh Kumar',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2006-12-28',
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
    2015,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5015, 
    '16171', 
    'gAAAAABpLUYT8hEb4wQA_yUUn3LTXx0gwzTsxScUGZIpDcjjSq9txuHMBghZrX9PR-nYABhy2z6bSCHHjkaAXR87nSgZM_u1LsNpixDcFlULzttjBAnLxi4=', 
    'gAAAAABpLUYTnErVDKCBNGnNOb25socamy-Xt2s3OKac1SPE8jP35zFgubKcfaVNxaTvvhi3A3ykUEBQwoRxHLdoITsEjav3Xw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Naresh Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2015,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162462, 
    5015, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Rewati Ram (20927.0)
-- Employee ID: 2016 | UID: 5016 | User Role ID: 444303467162463
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2016,
    '20927',
    'Shri.',
    'Rewati',
    NULL,
    'Ram',
    'Rewati Ram',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '1998-04-01',
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
    2016,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5016, 
    '20927', 
    'gAAAAABpLUYTVYoeY0DLXd6w9dygxAcmrNiXU7we4o3zHpiyquwTNdJNK6bXYHJrN5YkvYYGM1AUYgqZHUti5-x8wup0EkqonkHpHgBtlOLtkSElYjTWjUk=', 
    'gAAAAABpLUYTa4hkRCheUhxpyA70cwg1z6L2YiEWrlorBHFXPFipYBLSnjS2GYquVSIokipTVLiUQ-Ydv5oW61KEVh1idWW7lg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Rewati Ram',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2016,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162463, 
    5016, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Sanjay  (54827.0)
-- Employee ID: 2017 | UID: 5017 | User Role ID: 444303467162464
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2017,
    '54827',
    'Shri.',
    'Sanjay',
    NULL,
    '-',
    'Sanjay',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2017-05-18',
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
    2017,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5017, 
    '54827', 
    'gAAAAABpLUYTfK-lAfn1-rWrZsewXEjckHaFfci7z3Z5I4dIYJWdoDsrZkn4IZskajq3TbsKPEGKzb09fhvHAx5WQPReni3c4YEN2vTrncCTYyX8rUNkGPA=', 
    'gAAAAABpLUYTrQhruJ1avm5KHRZvSRrJb4o1dsKnDyOVYL9-YiuaCgOq7HfQnK47TEIGWEbCOK1UmM3F3ePLmn1DaYNIEgQXsg==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Sanjay',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2017,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162464, 
    5017, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Puneet Kumar (56862.0)
-- Employee ID: 2018 | UID: 5018 | User Role ID: 444303467162465
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2018,
    '56862',
    'Shri.',
    'Puneet',
    NULL,
    'Kumar',
    'Puneet Kumar',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2023-12-04',
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
    2018,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5018, 
    '56862', 
    'gAAAAABpLUYTDbCJqNYTKBKOGSbkZyqb97AA1jM-eCB-Wh2GmdGgSf7oi4cdtzm2zVvanQFF-MDh_uzAtQltj14oTEVZ6_VimhsSdztR2Ic8rSqdNXFyKAU=', 
    'gAAAAABpLUYTXN9iY303CVFUW9oENXYEpQJxvy9G-tlcbk5cwbGZgwME_gCeehxX6XxKoktoBn-wtEC-T69ePfb1g2Apg7WjXw==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Puneet Kumar',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2018,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162465, 
    5018, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Tule Ram (48403.0)
-- Employee ID: 2019 | UID: 5019 | User Role ID: 444303467162466
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2019,
    '48403',
    'Shri.',
    'Tule',
    NULL,
    'Ram',
    'Tule Ram',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '1998-04-01',
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
    2019,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5019, 
    '48403', 
    'gAAAAABpLUYThld1Ol6M7NemxKJvlqsfZvkgPJ-Y0ijkbWV6-zW7JX5UEsDfDqfgNPjkw4YGMpGQQTqnR0v6ingo0egtNY9FiCE-taeGn-jrbYr_OkaXvVw=', 
    'gAAAAABpLUYT8tQX-Ij-Y41u_1VxI4aAANuUTXRrVhl235T-_ZmL-eA5aDovWv0HkozRfXDSsAS7vstVFOFpltrXdcTxPFSRsQ==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Tule Ram',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2019,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162466, 
    5019, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Ganesh Lal  (56734.0)
-- Employee ID: 2020 | UID: 5020 | User Role ID: 444303467162467
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2020,
    '56734',
    'Shri.',
    'Ganesh',
    NULL,
    'Lal',
    'Ganesh Lal',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2022-02-01',
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
    2020,
    1,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5020, 
    '56734', 
    'gAAAAABpLUYTMa0Gu8vmw8slBGogAFuSue8HqsjkgCllV2puLYWGdc4C3MLwflKCBt65vSY74xscPceZubIQGAodHUhVrAeg4C1ttOnrIVOEofoqU5aU7vo=', 
    'gAAAAABpLUYTeDo808mNAdXx7mBJq2-uh888pDUJ3dQHLTsbJ63x2sn5NkXkQgxuRcYJnQYUmfoHJv_vxWJLUSu2Wx7dQ7n4jA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Ganesh Lal',
    'JUNIOR ENGINEER',
    'HPPWD',
    9527055849,
    1,
    2020,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162467, 
    5020, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: Vir Singh  (51957.0)
-- Employee ID: 2021 | UID: 5021 | User Role ID: 444303467162468
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2021,
    '51957',
    'Shri.',
    'Vir',
    NULL,
    'Singh',
    'Vir Singh',
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    '2018-09-30',
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
    2021,
    4,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5021, 
    '51957', 
    'gAAAAABpLUYTeJ36txK8s3oLCFamtBjlL_pXWVG05GdAXU8HPC6ZH2mtoS7vSB8pj0slLnyLwbfxFXE2Pc6hgA8vL2ddH2G3yej6SRoCQeq4NHuAh5eeKeE=', 
    'gAAAAABpLUYTWwKwFx6X0nbDsUS3G_V5OEq67SjBmUIXTkfPK2uWioMlJLuiLnZaJOBxy_MYKPztPRu-Je3UxrB__teFY5WGuA==', 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    'Vir Singh',
    'OTHER',
    'HPPWD',
    9527055849,
    4,
    2021,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162468, 
    5021, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------


================================================================================
-- Employee: nan (nan)
-- Employee ID: 2022 | UID: 5022 | User Role ID: 444303467162469
================================================================================

-- [1/4] WAMIS DATABASE - amsm_employee
INSERT INTO wamis.amsm_employee (
    employee_id, emp_num, title, first_name, middle_name, last_name, full_name,
    office_id, is_active, operated_by, operated_on, tenant_id, status,
    joining_date, relieving_date, is_service_change, is_data_ported
) VALUES (
    2022,
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    'Y', 8208031580, NOW(), 9527055849,
    'A',
    'NaT',
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
    2022,
    3,
    'N',
    NULL,
    NULL,
    8208031580, NOW(), 9527055849,
    'Y', 'A', 'A', true
);

-- [3/4] UM DATABASE - umsm_user
INSERT INTO um.umsm_user (
    uid, user_id, email_id, mobile_no, "password", old_password,
    employee_status, is_admin_user, is_internally_mapped,
    valid_from, valid_till, operated_on, operated_by, password_changed_on,
    "name", designation, company, tenant_id, designation_id, employee_id, is_data_ported
) VALUES (
    5022, 
    '0', 
    NULL, 
    NULL, 
    '370ff199c75276a360640b2baffe4c56132477297e25d0d8c5702988ee11e231',
    '',
    'A', 'N', 'N',
    NULL, NULL,
    NOW(), 8208031580, NULL,
    NULL,
    'EXECUTIVE ENGINEER',
    'HPPWD',
    9527055849,
    3,
    2022,
    true
);

-- [4/4] UM DATABASE - umst_user_role
INSERT INTO um.umst_user_role (
    user_role_id, uid, role_id, unit_id, operated_on, operated_by, tenant_id, is_data_ported
) VALUES (
    444303467162469, 
    5022, 
    532193206, 
    NULL, 
    NOW(), 
    8208031580, 
    9527055849, 
    true
);

-- ----------------------------------------------------------------------

COMMIT;

-- Total records processed: 23
-- Total errors: 0