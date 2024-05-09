SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 내장 SQL 함수 DECODE는 PL/SQL에서 지원되지 않음
DECLARE
v_NUM NUMBER := 1;
BEGIN
dbms_output.put_line(v_NUM || '은 ' || DECODE(MOD(v_num,2), 0, '짝수', '홀수') || '입니다.' );
END;
/
