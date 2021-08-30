-- Using bind variables

SET SERVEROUTPUT ON;

SET AUTOPRINT ON;

-- declaring bind variables -- we need to use 'VARIABLE' keyword to declare bind variables
-- We cannot directly assign a value for our bind variables! We need to do the assignment in a BEGIN-END block.
VARIABLE var_text VARCHAR2(30);

VARIABLE var_number NUMBER;

-- we cannot have bind variable of DATE type
-- variable var_date DATE;

DECLARE
    v_text VARCHAR2(30);
BEGIN
    -- accessing bind variable, we need to prefix with ':'
    :var_text := 'Hello SQL';
    :var_number := 20;
    v_text := :var_text;
    dbms_output.put_line(v_text);
    dbms_output.put_line(:var_text);
END;

PRINT var_text;
