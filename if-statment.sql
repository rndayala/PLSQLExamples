-- example using if statments

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 30;
BEGIN
    IF v_number < 10 THEN
        dbms_output.put_line('I am smaller than 10');
    ELSIF v_number < 20 THEN
        dbms_output.put_line('I am smaller than 20');
    ELSIF v_number < 30 THEN
        dbms_output.put_line('I am smaller than 30');
    ELSE
        dbms_output.put_line('I am equal or greater than 30');
    END IF;
END;