SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM CASE ǥ�������� �ٲپ� ������ �ذ��Ѵ�
DECLARE
v_NUM NUMBER := 1;
BEGIN
dbms_output.put_line(v_NUM || '�� ' || CASE MOD(v_NUM,2) WHEN 0 THEN '¦��' ELSE 'Ȧ��' END || '�Դϴ�.' );
END;
/
