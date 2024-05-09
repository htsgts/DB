SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 조사 CASE 표현식으로 변경 (Searched CASE expression)
DECLARE
v_BOOL  BOOLEAN := TRUE;
v_STR STRING(100);
BEGIN
--조사 CASE 표현식(Searched CASE expression)
v_STR := CASE WHEN v_bool = TRUE THEN 'v_BOOL is TRUE'
WHEN v_bool = FALSE THEN 'v_BOOL is FALSE'
ELSE 'v_BOOL is NULL'
END;
dbms_output.put_line(v_STR);
END;
/
