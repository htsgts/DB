SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM SAVEPOINT의 사용(예제9-23)
DECLARE
v_org_sal NUMBER := 5000;
BEGIN
DELETE FROM emp WHERE empno = 9000; --이전 예제에서 생성된 데이터 삭제
COMMIT; 
INSERT INTO emp(empno,ename,hiredate,sal) VALUES(9000,'홍길동',sysdate,9000);
SAVEPOINT p1; --첫번째 SAVEPOINT p1
UPDATE EMP SET sal = sal + 100 WHERE empno = 9000;
SAVEPOINT p2; --첫번째 SAVEPOINT p2
BEGIN
INSERT INTO emp(empno,ename,hiredate,sal)
VALUES (9000,'임꺽정',sysdate,v_org_sal);
EXCEPTION WHEN OTHERS THEN
--17번 줄의 INSERT문이 실패하면 14번 줄의 UPDATE와 17번 줄의 INSERT는 취소하고
--11번 줄의 INSERT문은 변경에 반영하도록 한다.\
dbms_output.put_line('오류 발생 감지 = ' || SQLERRM); --오류 메시지 출력
ROLLBACK TO p1; --트랜잭션을 p1상태로 복귀
END;
COMMIT;
DECLARE
v_sal NUMBER;
BEGIN
SELECT sal INTO v_sal FROM emp WHERE empno = 9000;
dbms_output.put_line('SAL = ' || v_sal); --11번 줄에서 INSERT된 급여가 출력된다.
IF v_org_sal <> v_sal THEN
dbms_output.put_line('원 급여가 변경되었습니다.');
ELSE
dbms_output.put_line('원 급여가 변경되지 않았습니다.');
END IF;
END;
END;
/