SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ���� CASE ǥ�������� ���� (Searched CASE expression)
DECLARE
v_BOOL  BOOLEAN := TRUE;
v_STR STRING(100);
BEGIN
--���� CASE ǥ����(Searched CASE expression)
v_STR := CASE WHEN v_bool = TRUE THEN 'v_BOOL is TRUE'
WHEN v_bool = FALSE THEN 'v_BOOL is FALSE'
ELSE 'v_BOOL is NULL'
END;
dbms_output.put_line(v_STR);
END;
/
