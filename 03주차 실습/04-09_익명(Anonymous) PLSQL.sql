SET ECHO ON
SET TAB OFF 
SET SERVEROUTPUT ON 

REM ��������: �ǽ�04-09_�͸�(Aninymous) PL/SQL_�й�����.sql
DECLARE
v_num NUMBER;
BEGIN
v_num:=square(10);
dbms_output.put_line(v_num);
END;
/
