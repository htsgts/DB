SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM %ROWTYPE를 사용하면 프로그램이 간단해진다.
DECLARE
v_emprec emp%ROWTYPE; -- 레코드 변수 선언
BEGIN
v_emprec.empno := 7788;
SELECT *
INTO v_emprec -- 레코드 변수 사용
FROM emp
WHERE empno = v_emprec.empno;
dbms_output.put_line('이름 : ' || v_emprec.ename);
dbms_output.put_line('부서번호 : ' || v_emprec.deptno);
END;
/
