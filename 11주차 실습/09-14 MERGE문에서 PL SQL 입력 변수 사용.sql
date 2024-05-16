SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM MERGE������ PL/SQL �Է� ������ ���
DECLARE
    v_empno emp.empno%TYPE := 9000;
BEGIN
    MERGE INTO emp a
    USING DUAL
    ON (a.empno = v_empno)
    WHEN MATCHED THEN --����� 9000�� �ο� ����� Ŀ�̼��� 10% ����
    UPDATE
        SET a.comm = a.comm*1.1
    WHEN NOT MATCHED THEN --����� 9000�� �ο� ������ �� �ο� �߰�
        INSERT(empno, ename, job, hiredate, sal, deptno)
        VALUES(v_empno, 'ȫ�浿', 'CLERK', SYSDATE, 3000, 10);
        dbms_output.put_line('MERGE �Ǽ� :' || SQL%ROWCOUNT); --����� �Ǽ� ���
    COMMIT;
END;
    