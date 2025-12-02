-- Generated SQL Insert Queries
-- Generated on: 2025-12-01 16:44:58
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
    'gAAAAABpLXiyOW_-eWjTpwI2ufkSSbC7D7x3XvOXIt1qSpckgKXiRzjTpsHt7mzefsZmXGgcOi3kVdiIZQlablak3i3w52UaLOI5P3oJGkU6EVsd-szFftw=', 
    'gAAAAABpLXiyoZx05YApVspXBRNLyeeaWkQ5va2g7Fi_6G2OY5VbgqwWdMX3nL0XV9iVC62jqOIrtWjpxwJryjbSBIxB798XZA==', 
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
    'gAAAAABpLXiySEFFCMRJwYQ4ymb7ihj7-Bc0TVrymt-CIirX0Ju2FqzzHISXqodoY5AGC7oUp8YeErwAWgslDywRW7_szVi_xt3W4YJMAi2UOaZ2WVIf8rk=', 
    'gAAAAABpLXiydw7zxGaMHqBxctPaYNNSYfGqqyohBSExQ4saw59uHI5kn-TYAc_VL0YmIluMOqVRevlat6FaTO11b6g_JrNnRg==', 
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
    'gAAAAABpLXiycaeRJCu93NBajjQgF825X8dDM9Pp5Wp5mnqBNeN00hDtQ1RlzdTxGL7HUCDQ_bDGOOrDWUqHLB3C4ld08L1kk8j9UTHX6FSQ0KEw70e2tCM=', 
    'gAAAAABpLXiypOjXJC0jnBRIqgVbhSOQGYLb2wFSSAQG8X6sN8bEO5geQUgqS7JZiurRniY_TCotRfsFkQlia_PhdY454nzXrg==', 
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
    'gAAAAABpLXiybKkPwI5EeOa_wIU09zw7xvFBmrI5KGASAVpXmYDGbvT7ooz4F2C5ENMhoA9ElCv-O8K83PGQQYKw_PK7NgiqJE5Ck0spXbWSdTefGLzMFnI=', 
    'gAAAAABpLXiyMy-GCrUsGXuLAhnMrZHP6s-f8N7vdgmW14DcFpnlUvhNbq9DeNWmbg-ozZTCxR-VXTJCvd_vBR3EBGSuusJ8Hg==', 
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
    'gAAAAABpLXiy30F3E6u_9Jpifk8yimS6kwfGtehjkUIN8giKpA2DlWkSR_-W9fmgct2JufaJxuE-97zDs7xKZObOq1TX49OqP76o3attDHYkIOPAHuSlkFs=', 
    'gAAAAABpLXiy-11QLQp-o7lwwZOJK3JXsaw1rJBPMCcOi80DwX1sDHAigOBN-fnzVuymg1Oy9BqQXARUAklzK0QdP5Gk4NNyAw==', 
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
    'gAAAAABpLXiyoE-D6lLSm9zALIN654lxPAT_oh2j9X8jJNH7q4Eff-GWnvq7W6ONqbQJzjUJTH60rvFRUNuogLb00BVapLvFPJ3hSqpCdjb7Q94iOO1NMls=', 
    'gAAAAABpLXiyBFI5h5FAx13gLbauIFO93BglCPlU80Wrck7nxGKw8HdhaEe-7R0jlRLmMxCXF1dG-1lpFypiGLQ8Fg0FMhu9oQ==', 
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
    'gAAAAABpLXiy5cTp-I3ZKhbxx4qT7JHPKhjIqTekzYWZo1DjI09KeQA1bFclPRmZmdMQ3iu4G9211tqp6u4MRppfn6TpP0225O3i8XO8dJyjjMspasJZzpw=', 
    'gAAAAABpLXiyFscgx220u1diLf5_W2UdyctitkrlNnwa0KNjgiwQ7A05QvXq6wQ_Jo-aofxFbp6QskDnROUV6QdkNHnzpPL_Zg==', 
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
    'gAAAAABpLXiy5pE01QuTt52OjCwJ-CVc_HfFBKEmn8D5jJvmnmQGnAIh-BuPDLf8ZE2iBJbSB4VW3TiHe-Ob8ZlEGfmqH2o7Ak-AHMY9967wrwnSGF7G-t0=', 
    'gAAAAABpLXiybMngf449HU7JtyE2014RC9x2i6ctdamXWL4TRgW4FUGYMLwlSfYyGsaXJLMeLSfjylmeayXPQOJUaLuHrdp02Q==', 
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
    'gAAAAABpLXiy03p78JC75ODTcmowvIdv_c_QRlci9Kl52XdXAuZ2GGeKbAHNSY6Ckk7GNqMs7mR-jxYk6fZisKVy-S3t0gmMIiRVgtvCyaNouhf6vz7XATs=', 
    'gAAAAABpLXiyXyyCFN6ylzwvn3Np4Kak0OHCVCHD31xYPms4128SeCVW8AkJ2a4b2wmhL_6_Fu4BwSlO-hPL_KNIfbDg0jTMBQ==', 
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
    'gAAAAABpLXiy7mYAgc3KL7Ec9jX0ZvKjS5_DuIrlzOO78SGScCuKr9YkZ_LyKVgq4I7P3vCbYVKTzTyn2wo_tyQfJna6ncCUPpWSzsHnCLLse6kBHUGEW-U=', 
    'gAAAAABpLXiysZr-AwwjpeBwr9gI3O-7cgztzXS3fZBlw8NC8raV6YPj9uWO2Le5iRK4MYeRYzkG1Qs_2Cu6nwSGyxlL6XAWWw==', 
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
    'gAAAAABpLXiybLoAPwtmiKKE-ui6eC5aN2JGV0lg0aHlkfVizXJ2CgjE3PAKaQ5U_RG6yPVIRmLPKc2RiN5aZLakHGfnE7frXiGOCcasSsF9qNauyPFeDNE=', 
    'gAAAAABpLXiySHv1KexWTVcGUHyoO_Z8ccWTuwwW_m2W9GGI2MSbopSeyx8nT0zywM8fzA0F6rvIoHm4EWXBiHSGWWEY3sGAHQ==', 
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
    'gAAAAABpLXiyfNqcAZrFw9uFaq3mCm0lhK_udauZUb1qGuYlm23mM6TA85YpQCDhUAsi-hVAf5F10ll3FCJHrIny4xB0F1bJu7YjgT_dhrWIgeayNW9JpLE=', 
    'gAAAAABpLXiyxd2jWfVkZSdgvbz4ZoHxrNNdU9gQrWbQaXO-lIedRcC1NKXBWPv7PIMcJ2PmKOoJGYVzt5C2T849MurknXLjEg==', 
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
    'gAAAAABpLXiy-nHDyzOxCTE1vSWVu_UYKRNOW33o87985XOeazKsXzv1LE0baJBedDTRsdYzVKjlNNZeTHen-UThTeNmxAhL0PNewqkXfM_KJFM3TSQwMPU=', 
    'gAAAAABpLXiyBk_qvRKrfElNRP-tVgwSY6EpekhmOYAOP4szXgvm6X-DLEEYtMOHL56-JMfnxhG4A6SQj3Jyv3IsUgdptCqxfw==', 
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
    'gAAAAABpLXiyrOhMQfoR7NXqG6Bh0lDjY0q_iYWIeixEueif9KF9Kh8z-QFEkMNfWToK2mBfzOGEs4ecKzrtd9abBSIKWKe3fLZR0fnIZ-edFsgs_eJaRQQ=', 
    'gAAAAABpLXiyoRb0q7OclAchp_ItYO58bqTtDTZDickhiBHDt2a4SS1zvtruY5ByT1-n8Ce6SSr3PhqhiukwGYODzE8hF6clow==', 
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
    'gAAAAABpLXiyEk_mBs7NdyCvlsKVSetvZNUFX2as8N7GO2V6EFcC6obCrUKOIl6CJhkov5oMlXQ1DXRf5l_EG-tB86mcpbDlfW5u-xVute-Xqcir9FBncDw=', 
    'gAAAAABpLXiyz8s5ez64UrhFs7FJZoeGt-Or9viwe5SXFtJ5d-E5O8NkpqzsstH1j78JXFycoZuj4RWOki8Rra8OyqU2znuX1Q==', 
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
    'gAAAAABpLXiyLWxHNabejf4dqHj5x-oPMmjD5TXJbMgGWwgL1OF88LJB7V_dUoE3JVJ6hUrTzBbFmOKSYan7rKbLQkdZMWOfokITTGFgS4OMb5xE8-x7j5Q=', 
    'gAAAAABpLXiyPkslqLgDvYn3oQCAy1jlYDEa6j_CmBSJKX6AeAx4ovTfvOVZsuP9EEfUwRHggcUqO3IvfiZLqQ3KNzgJZxSGow==', 
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
    'gAAAAABpLXiyJcBa3FXYF1W897EETcaSkQam5ibVdCAY1hT2468TSOPpgdcCUfdPI4Tzlu0mzggm0PcH9XFDzHydHxapdu5nQB5VUzg2QM6iY-qtYyafZiI=', 
    'gAAAAABpLXiytk7Xli-O4-nw7ElqJstNHLpH9iAm4GBdUrRe3gCo8-_c1No49RwATffbIkcnzFjFnCd6xk4tl4MihPEd4Rt5Wg==', 
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
    'gAAAAABpLXiy3pMq3U_2X6TNwWO8-Z2SRT6izXNnA21Xt94Ks7X_TGFLw7U8HH-8VioHd6CowImHoIc7MDJGpQcsLvqQit9CPBgqak2DXjy7B62J8hhGsAg=', 
    'gAAAAABpLXiy107XX5SctpX1Gd7DNecMjoxNx2-7sYNgvQFJeDgzQ8VrDlzORkSeigjBT2VZdpxLwCupzcgf9sYp7hY1Ay-vlw==', 
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
    'gAAAAABpLXiy-LaqW-vamShy1j1qOkXWdVqDf5UVjQHCHXtBF3c_JvhSXy7ZHYgjX2IBJj6zIUkLdsoTwsAk7ZXeuzINIv0JFRCSm_EFDH_pQkuWvKLNrdY=', 
    'gAAAAABpLXiyTJq0DWg9zLE12jx3Y0rIXCYmp1WLsGfVg7wc8B2pt_NveqNdhU_az4gcLqXIymqJ3_5eE7AZNqsdON8gGWRfFA==', 
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
    'gAAAAABpLXiyxqQ0zwC8FCm_HVgM523xQ7qr2m3ZkSzIoj43kyaBvjGovCpeFvGzOZBWGhpipEqkHzlJY8XGNzATrAKe76X6m2qnPzOV82LWInDIEl7zedA=', 
    'gAAAAABpLXiyhJ07n947E2YXPFSKRg8kmwiqiM80Me4xernyTf6s7DPeufDcLRrjNrSWMmgVQevrAMA8oAJhUmN-AWiFn9G5oA==', 
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
    'gAAAAABpLXiyE6UFOxORAWCXdECgktcMgpm5pERvYRLiRFfQthaGFCkNSY4163IxsR5u3xCbOYWLwrNut7_0EEW7DC1uQZ4DvQ0y0iY__yIbUEG7_snwZ80=', 
    'gAAAAABpLXiysZnPGWtzIs20gqcj6NLCSniKRcmxK35orv2QIMEzTdojc20fgnw5RMhm4m-o6dy6nTFcI38siso3SVmsaNo-aw==', 
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
    'gAAAAABpLXiyGAkDIkyoS1rS2MEo7goQfwn4ZE2LqlEiAaFEM1vKRiD7DBPFlTYF1HpHyOt0nq1CWThYZWAx_qsRO6qkqYwm5haMtPP3CQ3w9RjijE9tLqg=', 
    'gAAAAABpLXiyJ5wTs3bWkCIfUmTM6Bqv4sO-Q7Ybuu7qX-JPjWhPS3Ucs5VlehQkd7htn9oAehIYKlgy2WdffYeOUrqKvg4ERQ==', 
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
    'gAAAAABpLXiyNGuaeyHRP-yCLpFyK9-mFqgyG8GH8vVaiCDKTfB_JmQ7xbinUCuGciEMfzrnu-JPQLGKiIX6LuY1DR27GFIR0xk7NQqsS_qqKrS5w1TlWBE=', 
    'gAAAAABpLXiyf0MA4XmApJclVv9mzvsZNxfqFoznVIT61vtzU-ys4TR5HQDr52fKAqt84mTiiN4CIepccqb_4m78YQZRJypYXw==', 
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
    'gAAAAABpLXiyOqgImU_aslDiawTeIKEMsAtcDFb9HF-R3s3H0kfdflDTYumxnaNIDgm0f3OF6XX2m4xs-UIGxCeNCzaP6AouupTnIowrnFQuMmkoxRcv02M=', 
    'gAAAAABpLXiyn5LJ7eRIjOSFO7XCBitV4aXeJ05Lr-mH1HEx1cz-W5OV5FcNmnyMdBCoZmYkAaFnFeElJJeUG6_3920MBkcPZQ==', 
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
    'gAAAAABpLXiyMiwNonfqVTfcN6_kqqWRGJL5xf9OSHzReUGPIAv8PwhAsAF85rgFsBPkk58ovExNQTJ_5ytbIruBepWvQQdp7ebWuPOUKQxEAD972vlUQLc=', 
    'gAAAAABpLXiyP5shDv0QaGjlHIhJR5Ql_WN1Fs8u5CUb0dvM1Va8rscjizV2dKY3AEWKI7n0TsOCa08gK9YviQzwd-DvLSiyFg==', 
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