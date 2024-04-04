SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ������ ������ Ÿ�� ����� "(���� CHAR)" ���� ���
REM ����Ʈ ������ �ƴ� ���� �� ������ ���̷� ����ǹǷ�
REM �����ͺ��̽� �������տ� ���� �ִ� ���̰� �޶�����.
DECLARE
v_charset VARCHAR2(16);      --�ִ� 16����Ʈ
v_name1 VARCHAR2(8 CHAR); -- �ִ� 8����
v_name2 VARCHAR2(100);          --�ִ� 100����Ʈ
BEGIN
--Fixed View���� �����ͺ��̽� ���� ������ ��ȸ�Ͽ� ����Ѵ�.
SELECT VALUE INTO v_charset FROM v$nls_parameters WHERE parameter = 'NLS_CHARACTERSET';
dbms_output.put_line('�����ͺ��̽� ���� ���� : ' || v_charset);
dbms_output.put_line(char(9));  -- �� ���� (�� �� ��¿�)

--���� ����
dbms_output.put_line('v_name1 varchar(8 CHAR)');
dbms_output.put_line('=================');
v_name1 := 'Miller';  --���ĺ� ���ڿ�
dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'����Ʈ');
v_name1 :='��������' ; -- �ѱ� ���ڿ�
dbms_output.put_line(rpad(v_name1,9)||':'||lengthb(v_name1)||'����Ʈ');
dbms_output.put_line(char(9));  -- �� ���� (�� �� ��¿�)


--����Ʈ ����
dbms_output.put_line('v_name2 varchar(100)');
dbms_output.put_line('=================');
v_name2 := 'Miller';  --���ĺ� ���ڿ�
dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'����Ʈ');
v_name2 :='��������' ; -- �ѱ� ���ڿ� 
-- '��������'(12����Ʈ)�� v_name2(8����Ʈ)�� ������ �� ��� ������ �߻��ϴ� ��
dbms_output.put_line(rpad(v_name2,9)||':'||lengthb(v_name2)||'����Ʈ');



END;
/
