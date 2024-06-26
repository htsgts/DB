SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM DECODE를 사용하려면 다음과 같이 SQL문을 사용해야 함
DECLARE
v_NUM NUMBER := 1;
v_TYPE STRING(10);
BEGIN
SELECT DECODE(MOD(v_NUM,2), 0, '짝수', '홀수')
INTO v_TYPE
FROM DUAL;
dbms_output.put_line(v_NUM || '은 ' || v_TYPE || '입니다.' );
END;
/
