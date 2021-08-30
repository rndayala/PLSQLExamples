SET SERVEROUTPUT ON;

DECLARE
    v_text    VARCHAR2(50) NOT NULL := 'Hello';
    
    -- NUMBER data type
    v_number1 NUMBER := 50;  -- 50
    
    -- without scale, it only prints whole number
    v_number2 NUMBER(4) := 50.42; -- 50
    
    -- NUMBER(precision, scale) --> total number of digits, scale - the digits after dot
    v_number3 NUMBER(10, 2) := 50.42;  -- 50.42

    -- BINARY_INTEGER --> integer type, no decimals allowed for this; this is faster than NUMBER type
    v_number4 BINARY_INTEGER := 50;    -- we can also use PLS_INTEGER
    
    -- BINARY_FLOAT -- no (precision, scale) required. for float, use 'f'
    v_number5 BINARY_FLOAT := 50.42f;
    
    -- DATE type 
    v_date DATE := SYSDATE;  -- SYSDATE gives current date time
    v_date1   DATE := '22-NOV-18 12:01:32';
    
    -- TIMESTAMP -- additionally includes milliseconds
    v_date2   TIMESTAMP := systimestamp;  -- systimestamp gives current timestamp
    
    v_date3   TIMESTAMP(9) WITH TIME ZONE := systimestamp; -- precision gives milliseconds precision; default 6.
    v_date4   INTERVAL DAY ( 4 ) TO SECOND ( 3 ) := '124 02:05:21.012 ';
    v_date5   INTERVAL YEAR TO MONTH := '12-3';
    
    -- boolean data type
    v_boolean BOOLEAN := TRUE;
    
BEGIN
    -- string concatenation
    v_text := 'PL/SQL' || 'Course';
    dbms_output.put_line(v_text);
    
    dbms_output.put_line('v_number1 NUMBER := 50; -->' || v_number1);   -- 50
    dbms_output.put_line('v_number2 NUMBER(4) := 50.42; -->' || v_number2);     -- 50
    dbms_output.put_line('v_number3 NUMBER(10, 2) := 50.42; -->' || v_number3);     -- 50.42
    dbms_output.put_line('v_number4 BINARY_INTEGER := 50; -->' || v_number4);      -- 50
    dbms_output.put_line('v_number5 BINARY_FLOAT := 50.42f; -->' || v_number5);     -- 5.04199982E+001
    
    dbms_output.put_line('v_date DATE := SYSDATE; -->' || v_date);      -- 26-AUG-21 16:02:43
    dbms_output.put_line('v_date1   DATE := "22-NOV-18 12:01:32"; -->' || v_date1);  -- 22-NOV-18 12:01:32
    dbms_output.put_line('v_date2   TIMESTAMP := systimestamp; --> ' || v_date2);   -- 26-AUG-21 04.02.43.963000 PM
    dbms_output.put_line('v_date3   TIMESTAMP(9) WITH TIME ZONE := systimestamp; -->' || v_date3);   -- 26-AUG-21 04.02.43.963000000 PM +05:30
    
    dbms_output.put_line(v_date4);      -- +0124 02:05:21.012
    dbms_output.put_line(v_date5);      -- +12-03
    
    -- dbms_output.put_line(v_boolean);  -- ERROR we cannot use Boolean as printable.
    dbms_output.put_line(sys.diutil.bool_to_int(v_boolean));  -- boolean printed as integer value
    
    
END;