SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ROLLBACK의 사용(예제9-23)
BEGIN
DELETE FROM emp WHERE empno = 9000; --이전 예제에서 생성된 데이터 삭제
COMMIT; --emp 테이블의 데이터는 14건이 됨
--다음 INSERT문에 의해 emp 테이블의 데이터는 15건이 됨
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'홍길동',sysdate,9000);
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
ROLLBACK; --4번 줄과 5번 줄의 변경을 취소. emp 테이블의 데이터는 다시 14건이 됨
DECLARE
v_cnt NUMBER;
BEGIN
SELECT count(*) INTO v_cnt FROM emp WHERE empno = 9000;
dbms_output.put_line('사번이 9000 건수 = ' || v_cnt); 
END;
END;
/