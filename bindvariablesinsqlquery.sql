-- Using bind variables in SQL queries

SET SERVEROUTPUT ON;

SET AUTOPRINT ON;
/

-- run this code to make this bind variable available to the session
variable var_sql number;
/

-- this particular code block need to be run before executing sql statement
begin
:var_sql := 100;
end;
/

SELECT
    *
FROM
    employees
WHERE
    employee_id = :var_sql;  -- using bind variable here in SQL query
