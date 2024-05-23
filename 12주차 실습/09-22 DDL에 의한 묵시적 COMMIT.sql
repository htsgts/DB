SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 이전에 생성된 테이블 t가 있으면 DROP
DROP TABLE t;

PAUSE

REM DDL에 의해 묵시적 COMMIT(예제9-22)
REM EXECUTE IMMEDIATE 'CREATE TABLE'문은 트랜잭션을 묵시적으로 COMMIT한다.
BEGIN
DELETE FROM emp WHERE empno = 9000; --이전 예제에서 생성된 데이터 삭제
COMMIT;
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'홍길동',sysdate,9000);
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
EXECUTE IMMEDIATE 'CREATE TABLE t(C1 NUMBER)'; --DDL이 수행되면 자동으로 COMMIT이 수행된다.
ROLLBACK; --6번 줄에서 트랜잭션이 이미 묵시적으로 COMMIT되었으므로 무의미함
DECLARE
v_sal NUMBER;
BEGIN
SELECT sal INTO v_sal FROM emp WHERE empno = 9000;
dbms_output.put_line('SAL = ' || v_sal); --사번 9000에 대한 DML이 COMMIT됨
END;
END;
/