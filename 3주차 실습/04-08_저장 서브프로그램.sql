SET ECHO ON
SET TAB OFF 
SET SERVEROUTPUT ON 

REM ��������: �ǽ�04-08_���� �������α׷�_�й�����.sql
CREATE OR REPLACE FUNCTION square(a_num NUMBER)
RETURN NUMBER
IS
BEGIN
RETURN a_num * a_num;
END;
/
