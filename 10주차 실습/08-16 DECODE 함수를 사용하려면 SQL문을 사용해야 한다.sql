SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM DECODE�� ����Ϸ��� ������ ���� SQL���� ����ؾ� ��
DECLARE
v_NUM NUMBER := 1;
v_TYPE STRING(10);
BEGIN
SELECT DECODE(MOD(v_NUM,2), 0, '¦��', 'Ȧ��')
INTO v_TYPE
FROM DUAL;
dbms_output.put_line(v_NUM || '�� ' || v_TYPE || '�Դϴ�.' );
END;
/
