SET SERVEROUTPUT ON;

-- FOR loop example
BEGIN
    FOR i IN REVERSE 1..10 LOOP
        dbms_output.put_line('My counter is : ' || i);
    END LOOP;
END;
/

BEGIN
    -- here 'i' is counter, it is implicitly integer
    -- you specify lower and upper bounds separated by two dots (..)
    FOR i IN 1..10 LOOP
        dbms_output.put_line('My counter is : ' || i);
    END LOOP;
END;
/