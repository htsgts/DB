SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

DECLARE
v_bool  BOOLEAN;
BEGIN
v_bool := FALSE;

--IF문의 분기 조건 판단에 사용
IF v_bool = TRUE THEN
dbms_output.put_line('v_bool이 참입니다.');
ELSE
dbms_output.put_line('v_bool이 거짓입니다.');
END IF;

v_bool := FALSE;
--WHILE문의 순환조건 판단에 사용
WHILE v_bool = FALSE
LOOP
v_bool := TRUE;
dbms_output.put_line('첫번째 while문이 실행되었습니다.');
END LOOP;

v_bool := FALSE;
-- BOOLEAN 표현식에 NOT 사용
WHILE NOT v_bool = FALSE
LOOP
v_bool := TRUE;
dbms_output.put_line('두번째 while문이 실행되었습니다.');
END LOOP;
END;
/
