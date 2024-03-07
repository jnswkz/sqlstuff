-- CREATE TABLE COMPANY(
--     company_code varchar(64),
--     founder varchar(64)
-- );
-- CREATE TABLE LEAD_MANAGER(
--     lead_manager_code varchar(64),
--     company_code varchar(64)
-- );

-- CREATE TABLE SENIOR_MANAGER(
--     senior_manager_code varchar(64),
--     lead_manager_code varchar(64),
--     company_code varchar(64)
-- );

-- CREATE TABLE MANAGER(
--     manager_code varchar(64),
--     senior_manager_code varchar(64),
--     lead_manager_code varchar(64),
--     company_code varchar(64)
-- );

-- CREATE TABLE EMPLOYEE(
--     employee_code varchar(64),
--     manager_code varchar(64),
--     senior_manager_code varchar(64),
--     lead_manager_code varchar(64),
--     company_code varchar(64)
-- );


SELECT DISTINCT E.company_code,
    (SELECT founder FROM COMPANY WHERE company_code = E.company_code),
    (SELECT COUNT(*) FROM LEAD_MANAGER WHERE company_code = E.company_code),
    (SELECT COUNT(*) FROM SENIOR_MANAGER WHERE company_code = E.company_code),
    (SELECT COUNT(*) FROM MANAGER WHERE company_code = E.company_code),
    (SELECT COUNT(*) FROM EMPLOYEE WHERE company_code = E.company_code)

FROM EMPLOYEE E
