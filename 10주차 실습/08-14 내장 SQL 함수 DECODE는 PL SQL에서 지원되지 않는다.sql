SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ���� SQL �Լ� DECODE�� PL/SQL���� �������� ����
DECLARE
v_NUM NUMBER := 1;
BEGIN
dbms_output.put_line(v_NUM || '�� ' || DECODE(MOD(v_num,2), 0, '¦��', 'Ȧ��') || '�Դϴ�.' );
END;
/
