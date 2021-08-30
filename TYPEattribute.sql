-- Using %TYPE attribute
SET SERVEROUTPUT ON;

DECLARE
    -- variable type declared as same type %TYPE as database column
    v_job_id employees.job_id%TYPE;
    
    -- declare another variable using same type as a variable declared earlier
    v_job_id2 v_job_id%TYPE;
    
    -- %TYPE only get the data type; if database column is NOT NULL, we won't get that constraint.
    v_job_id3 employees.JOB_ID%TYPE ;
    
BEGIN
    v_job_id := 'IT PROG';
    v_job_id2 := 'SA_MAN';
    v_job_id3 := NULL;
    
    dbms_output.put_line('job type : ' || v_job_id);
    dbms_output.put_line('job type : ' || v_job_id2);
    dbms_output.put_line('job type : ' || v_job_id3 || 'HELLO');
    
END;