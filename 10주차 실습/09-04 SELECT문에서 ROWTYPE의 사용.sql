SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM %ROWTYPE�� ����ϸ� ���α׷��� ����������.
DECLARE
v_emprec emp%ROWTYPE; -- ���ڵ� ���� ����
BEGIN
v_emprec.empno := 7788;
SELECT *
INTO v_emprec -- ���ڵ� ���� ���
FROM emp
WHERE empno = v_emprec.empno;
dbms_output.put_line('�̸� : ' || v_emprec.ename);
dbms_output.put_line('�μ���ȣ : ' || v_emprec.deptno);
END;
/
