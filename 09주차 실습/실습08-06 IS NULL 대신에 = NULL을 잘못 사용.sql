SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 'IS NULL' 대신에 '=NULL"을 사용하면 의도한 결과를 얻을 수 없다.
DECLARE
x VARCHAR2(10);
BEGIN
x := NULL;
IF x = NULL THEN --실수로 x IS NULL 대신에 x = NULL을 사용함
dbms_output.put_line('위치 1. 테스트 : x = NULL ');
END IF;
IF x <> NULL THEN --실수로 x IS NULL 대신에 x <> NULL을 사용함
dbms_output.put_line('위치 2. 테스트 : x <> NULL ');
END IF;
print_boolean('위치 3. 테스트 : x = NULL ', x = NULL);
print_boolean('위치 4. 테스트 : x <> NULL ', x <> NULL);
print_boolean('위치 5. 테스트 : x IS NULL ', x IS NULL);
END;