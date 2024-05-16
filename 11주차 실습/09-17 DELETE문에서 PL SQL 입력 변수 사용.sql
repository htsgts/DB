SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM DELETE문에서 PL/SQL 입력 변수 사용
DECLARE
    v_empno emp.empno%TYPE := 9000;
BEGIN
    DELETE FROM emp
    WHERE empno = v_empno;
    dbms_output.put_line('DELETE 건수 :' || SQL%ROWCOUNT); --변경된 건수 출력
    COMMIT;
END;
    