SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

DECLARE
x VARCHAR2(10);
y NUMBER;
BEGIN
x := NULL ; print_boolean('NULL IS NULL ',x IS NULL);
x := NULL ; print_boolean('NULL IS NOT NULL ',x IS NOT NULL);
x := '' ; print_boolean(''''' IS NULL ',x IS NULL);
x := ' ' ; print_boolean(''' '' IS NULL ',x IS NULL);
x := NULL ; print_boolean('NULL = NULL ',x = NULL);
x := NULL ; print_boolean('NULL <> NULL ',x <> NULL);
Y := 0;  print_boolean('0 IS NULL ',y IS NULL);
END;