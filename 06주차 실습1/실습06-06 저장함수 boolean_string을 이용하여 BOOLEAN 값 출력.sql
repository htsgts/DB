SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM ���� �Լ� boolean_string�� �̿��Ͽ� BOOLEAN �� ���
BEGIN
    dbms_output.put_line('TRUE : '||boolean_string(true));
    dbms_output.put_line('FALSE : '||boolean_string(false));
    dbms_output.put_line('NULL : '||boolean_string(null));
    dbms_output.put_line('1=1 : '||boolean_string(1=1));
    dbms_output.put_line('2=2 : '||boolean_string(1=2));
END;
/