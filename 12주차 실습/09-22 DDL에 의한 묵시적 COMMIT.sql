SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ������ ������ ���̺� t�� ������ DROP
DROP TABLE t;

PAUSE

REM DDL�� ���� ������ COMMIT(����9-22)
REM EXECUTE IMMEDIATE 'CREATE TABLE'���� Ʈ������� ���������� COMMIT�Ѵ�.
BEGIN
DELETE FROM emp WHERE empno = 9000; --���� �������� ������ ������ ����
COMMIT;
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'ȫ�浿',sysdate,9000);
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
EXECUTE IMMEDIATE 'CREATE TABLE t(C1 NUMBER)'; --DDL�� ����Ǹ� �ڵ����� COMMIT�� ����ȴ�.
ROLLBACK; --6�� �ٿ��� Ʈ������� �̹� ���������� COMMIT�Ǿ����Ƿ� ���ǹ���
DECLARE
v_sal NUMBER;
BEGIN
SELECT sal INTO v_sal FROM emp WHERE empno = 9000;
dbms_output.put_line('SAL = ' || v_sal); --��� 9000�� ���� DML�� COMMIT��
END;
END;
/