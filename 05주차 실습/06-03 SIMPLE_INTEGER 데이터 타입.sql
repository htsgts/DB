SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ������ ������ Ÿ�� ����� "(���� CHAR)" ���� ���
REM ����Ʈ ������ �ƴ� ���� �� ������ ���̷� ����ǹǷ�
REM �����ͺ��̽� �������տ� ���� �ִ� ���̰� �޶�����.

DECLARE
v_simple_int SIMPLE_INTEGER := 2147483647; -- SIMPLE_INTEGER Ÿ���� ���� ū ��
BEGIN
dbms_output.put_line('���� �ִ� : ' || v_simple_int);
v_simple_int := v_simple_int + 1; -- �����÷ο�Ǿ� SIMPLE_INTEGER Ÿ���� ���� ���� ���� ��
dbms_output.put_line('�����÷ο� : ' || v_simple_int);
v_simple_int := v_simple_int - 1; -- �ٽ� ����÷ο�Ǿ� SIMPLE_INTEGER Ÿ���� ���� ū ���� ��
dbms_output.put_line('����÷ο� : ' || v_simple_int);
END;
/
