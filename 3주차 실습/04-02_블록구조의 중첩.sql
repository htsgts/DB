SET ECHO ON
SET TAB OFF 
SET SERVEROUTPUT ON 

REM ��������: �ǽ�04-02_��ϱ����� ��ø_�й� ����.sql
DECLARE
v_str VARCHAR2(100);
BEGIN
v_str:= 'Hello world!';
dbms_output.put_line(v_str);
EXCEPTION WHEN OTHERS THEN
dbms_output.put_line(SQLERRM);
END;
/
