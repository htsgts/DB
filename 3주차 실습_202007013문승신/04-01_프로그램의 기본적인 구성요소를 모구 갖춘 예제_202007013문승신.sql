SET ECHO ON --���ڸ�� : ��ũ��Ʈ�� @�� ����Ͽ� ������ ��� �� ������ �����ؾ� ��ũ��Ʈ ȭ�鿡 ��Ÿ��
SET TAB OFF -- �Ǽ���:�� ������ ON���� �ϰ� �Ǹ�(�⺻��) ��ũ��Ʈ ������ ���� �� ���ӵǴ� ���, ����� ������������ �̷����� ���
SET SERVEROUTPUT ON --���� ���:��������� SET SERVEROUTPUT ON�� �����ؾ� ȭ�鿡 ��Ÿ��

REM ��������: �ǽ�04-01_PL/SQL ���α׷��� �⺻���� ������Ҹ� ��� ���� ����_�й� ����.sql
DECLARE
v_str VARCHAR2(100);
BEGIN
v_str:= 'Hello world!';
dbms_output.put_line(v_str);
EXCEPTION WHEN OTHERS THEN
dbms_output.put_line(SQLERRM);
END;
/