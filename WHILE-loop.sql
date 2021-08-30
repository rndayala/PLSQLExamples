SET SERVEROUTPUT ON;

-- WHILE loop 
DECLARE
    v_counter NUMBER(2) := 1;
BEGIN        
        WHILE v_counter <= 10 LOOP
            dbms_output.put_line('My counter is : ' || v_counter);
            v_counter := v_counter + 1; 
            -- exit when v_counter > 3;  -- we still can have exit statement to exit before the condition becomes false
        END LOOP;
END;