SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ROLLBACK�� ���(����9-23)
BEGIN
DELETE FROM emp WHERE empno = 9000; --���� �������� ������ ������ ����
COMMIT; --emp ���̺��� �����ʹ� 14���� ��
--���� INSERT���� ���� emp ���̺��� �����ʹ� 15���� ��
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'ȫ�浿',sysdate,9000);
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
ROLLBACK; --4�� �ٰ� 5�� ���� ������ ���. emp ���̺��� �����ʹ� �ٽ� 14���� ��
DECLARE
v_cnt NUMBER;
BEGIN
SELECT count(*) INTO v_cnt FROM emp WHERE empno = 9000;
dbms_output.put_line('����� 9000 �Ǽ� = ' || v_cnt); 
END;
END;
/