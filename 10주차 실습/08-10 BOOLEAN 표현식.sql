SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

DECLARE
v_bool  BOOLEAN;
BEGIN
v_bool := FALSE;

--IF���� �б� ���� �Ǵܿ� ���
IF v_bool = TRUE THEN
dbms_output.put_line('v_bool�� ���Դϴ�.');
ELSE
dbms_output.put_line('v_bool�� �����Դϴ�.');
END IF;

v_bool := FALSE;
--WHILE���� ��ȯ���� �Ǵܿ� ���
WHILE v_bool = FALSE
LOOP
v_bool := TRUE;
dbms_output.put_line('ù��° while���� ����Ǿ����ϴ�.');
END LOOP;

v_bool := FALSE;
-- BOOLEAN ǥ���Ŀ� NOT ���
WHILE NOT v_bool = FALSE
LOOP
v_bool := TRUE;
dbms_output.put_line('�ι�° while���� ����Ǿ����ϴ�.');
END LOOP;
END;
/
