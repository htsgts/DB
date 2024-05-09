SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM CASE 표현식으로 바꾸어 오류를 해결한다
DECLARE
v_NUM NUMBER := 1;
BEGIN
dbms_output.put_line(v_NUM || '은 ' || CASE MOD(v_NUM,2) WHEN 0 THEN '짝수' ELSE '홀수' END || '입니다.' );
END;
/
