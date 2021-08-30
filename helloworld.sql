SET SERVEROUTPUT ON;

BEGIN
    dbms_output.put_line('Hello,World!!');
    BEGIN
        dbms_output.put_line('Good, Bye!!');
    END;
END;