REM ū ����ǥ�� ����� �پ��� ������ ����� ���� �ĺ���
REM ū ����ǥ�� ����ϸ� �Ϲ� ����� ���� �ĺ����� ���� ���� ��
REM 30�� ���� ������ ������ ��� ��������� �Ѿ �� �ִ�.
REM ���� ���ڳ� Ư�� ���ڸ� ������ �ĺ��ڵ� ����� �� ������
REM ���� Ű��������� ��� ����� ���� �ĺ��ڷ� ����� �� �ִ�.

DECLARE
 v_num NUMBER;                      -- �Ϲ� ����� ���� �ĺ���(�빮�� V_NUM���� �ĺ���)
 "v_num" NUMBER;                    -- �ҹ��� ����� ���� �ĺ���
 "���� ���� ������" NUMBER;      -- ���� ���ڸ� ������ ����� ���� �ĺ���
 "v_~!@#$%^&*()+-=" NUMBER;  -- Ư�����ڸ� ����� ����� ���� �ĺ���
 "BEGIN" NUMBER;                    -- ���� ����� ����� ���� �ĺ���
 
 FUNCTION "square number"(a_num NUMBER) -- �Լ��� �ĺ��ڿ� �ҹ��ڿ� ���� ����
 RETURN NUMBER IS
 BEGIN
 RETURN a_num * a_num;
 END;
 
 BEGIN
 "v_num" := 10;
 v_num := 20;
"���� ���� ������" :=30;
"v_~!@#$%^&*()+-=" :=40;
"BEGIN" :=50;
dbms_output.put_line("v_num");                     -- �ҹ��� �ĺ��� = 10
dbms_output.put_line(V_NUM);                      -- �빮�� �ĺ��� = 20
dbms_output.put_line(v_num);                       -- �빮�� �ĺ���(���� ������ ����) = 20
dbms_output.put_line("V_NUM");                   -- �빮�� �ĺ���(���� ������ ����) = 20
dbms_output.put_line("���� ���� ���� ������"); -- = 30
dbms_output.put_line("v_~!@#$%^&*()+-=");   -- = 40
dbms_output.put_line("BEGIN");                     -- = 50
dbms_output.put_line("square number"(10));     -- = 100
END;