SET SERVEROUTPUT ON;

-- The idea of using CASE expressions is to assigning different values into a variable based on different conditions.
-- CASE expressions  -- Method 1

DECLARE
    v_job_code        VARCHAR2(10) := 'SA_MAN';
    v_salary_increase NUMBER;
BEGIN
    -- using condition in CASE itself
    v_salary_increase := CASE v_job_code
            WHEN 'SA_MAN' THEN 0.2
            WHEN 'SA_REP' THEN   0.3
            ELSE 0
        END;

    dbms_output.put_line('Your salary increase is : ' || v_salary_increase);
END;
/

-- CASE expressions -- Method 2 -- Searched CASE expression

DECLARE
    v_job_code        VARCHAR2(10) := 'IT_PROG';
    v_department      VARCHAR2(10) := 'IT';
    v_salary_increase NUMBER;
BEGIN
    v_salary_increase := CASE
            -- condition is moved to each WHEN-THEN
            -- with this, we can have complex condition check which should return boolean TRUE/FALSE
            WHEN v_job_code = 'SA_MAN' THEN 0.2
            WHEN v_department = 'IT' AND v_job_code = 'IT_PROG'  THEN  0.3
            ELSE 0
        END;
    dbms_output.put_line('Your salary increase is : ' || v_salary_increase);
END;
/