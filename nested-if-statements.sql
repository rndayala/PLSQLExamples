-- nested if statements with multiple comparisons example

SET SERVEROUTPUT ON

DECLARE
    -- if we dont assign a value, by default it will have NULL value
    v_number NUMBER := 5;
    v_name   VARCHAR2(30) := 'Adam';
BEGIN
    -- using 'or' logical operator
    -- others are : 'and', 'not'
    IF v_number < 10 OR v_name = 'Carol' THEN
        dbms_output.put_line('HI');
        dbms_output.put_line('I am smaller than 10');
    ELSIF v_number < 20 THEN
        dbms_output.put_line('I am smaller than 20');
    ELSIF v_number < 30 THEN
        dbms_output.put_line('I am smaller than 30');
    ELSE
        -- nested if statement
        -- check for NULL value using 'IS NULL'
        IF v_number IS NULL THEN
            dbms_output.put_line('The number is null..');
        ELSE
            dbms_output.put_line('I am equal or greater than 30');
        END IF;
    END IF;
END;