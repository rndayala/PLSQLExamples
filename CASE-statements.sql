SET SERVEROUTPUT ON;

-- CASE statements example
-- CASE statements are much life if-statements.

DECLARE
    v_job_code        VARCHAR2(10) := 'IT_PROG';
    v_department      VARCHAR2(10) := 'IT';
    v_salary_increase NUMBER;
BEGIN
    CASE
        WHEN v_job_code = 'SA_MAN' THEN
            v_salary_increase := 0.2;
            dbms_output.put_line('The salary increase for a Sales Manager is : ' || v_salary_increase);
        WHEN v_department = 'IT' AND v_job_code = 'IT_PROG'  THEN
            v_salary_increase := 0.3;
            dbms_output.put_line('The salary increase for a Sales Manager is : ' || v_salary_increase);
        ELSE
            v_salary_increase := 0;
            dbms_output.put_line('The salary increase for this job code is : ' || v_salary_increase);
    END CASE; -- end CASE here
END;
/