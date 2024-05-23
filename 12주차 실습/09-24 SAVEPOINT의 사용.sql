SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM SAVEPOINT�� ���(����9-23)
DECLARE
v_org_sal NUMBER := 5000;
BEGIN
DELETE FROM emp WHERE empno = 9000; --���� �������� ������ ������ ����
COMMIT; 
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'ȫ�浿',sysdate,9000);
SAVEPOINT p1; --ù��° SAVEPOINT p1
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
SAVEPOINT p2; --ù��° SAVEPOINT p2
BEGIN
INSERT INTO emp(empno,ename,hiredate,sal)
VALUES (9000,'�Ӳ���',sysdate,v_org_sal);
EXCEPTION WHEN OTHERS THEN
--17�� ���� INSERT���� �����ϸ� 14�� ���� UPDATE�� 17�� ���� INSERT�� ����ϰ�
--11�� ���� INSERT���� ���濡 �ݿ��ϵ��� �Ѵ�.\
dbms_output.put_line('���� �߻� ���� = ' || SQLERRM); --���� �޽��� ���
ROLLBACK TO p1; --Ʈ������� p1���·� ����
END;
COMMIT;
DECLARE
v_sal NUMBER;
BEGIN
SELECT sal INTO v_sal FROM emp WHERE empno = 9000;
dbms_output.put_line('SAL = ' || v_sal); --11�� �ٿ��� INSERT�� �޿��� ��µȴ�.
IF v_org_sal <> v_sal THEN
dbms_output.put_line('�� �޿��� ����Ǿ����ϴ�.');
ELSE
dbms_output.put_line('�� �޿��� ������� �ʾҽ��ϴ�.');
END IF;
END;
END;
/