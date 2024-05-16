SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM �տ��� ������ �ο츦 ����
DELETE FROM emp WHERE empno = 9000;

REM INSERT������ PL/SQL �Է� ������ ���
DECLARE
    v_empno emp.empno%TYPE;
    v_ename emp.ename%TYPE;
    v_deptno emp.deptno%TYPE;
BEGIN
    v_empno := 9000;
    v_ename := 'ȫ�浿';
    v_deptno := 30;
    INSERT INTO emp(empno, ename, hiredate, deptno)
    VALUES (v_empno, v_ename, SYSDATE, v_deptno); --PL/SQL ���� ���
    dbms_output.put_line('INSERT �Ǽ� :' || SQL%ROWCOUNT); --����� �Ǽ� ���
    COMMIT;
END;
    