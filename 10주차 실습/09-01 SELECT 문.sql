SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 1°³ÀÇ Ä®·³ SELECT
DECLARE
v_cnt NUMBER;
BEGIN
SELECT COUNT(*)
INTO v_cnt
FROM emp;
dbms_output.put_line('COUNT(*) = ' || v_cnt);
END;
/
