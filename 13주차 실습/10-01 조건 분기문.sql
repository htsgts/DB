SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ���� �б⹮
DECLARE
v_cnt NUMBER;
v_type STRING(10);
BEGIN
-- ���̺� emp�� �����Ǿ� �ִ��� Ȯ���Ѵ�.
-- ��ųʸ� �� user_tables���� ������ ������ ��� ���̺� ����� ��� �ִ�.
SELECT COUNT(*)
INTO v_cnt
FROM USER_TABLES
WHERE TABLE_NAME = 'EMP';

IF v_cnt > 0 THEN --���̺��� USER_TABLES�� ��ϵǾ� ������ 0���� ũ��.
dbms_output.put_line('���̺� EMP�� �����մϴ�.');
ELSE --COUNT�� 0�̸� ���̺��� �������� �ʴ� ����̴�.
dbms_output.put_line('���̺� EMP�� �������� �ʽ��ϴ�.');
END IF;
END;
