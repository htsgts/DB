SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 'IS NULL' ��ſ� '=NULL"�� ����ϸ� �ǵ��� ����� ���� �� ����.
DECLARE
x VARCHAR2(10);
BEGIN
x := NULL;
IF x = NULL THEN --�Ǽ��� x IS NULL ��ſ� x = NULL�� �����
dbms_output.put_line('��ġ 1. �׽�Ʈ : x = NULL ');
END IF;
IF x <> NULL THEN --�Ǽ��� x IS NULL ��ſ� x <> NULL�� �����
dbms_output.put_line('��ġ 2. �׽�Ʈ : x <> NULL ');
END IF;
print_boolean('��ġ 3. �׽�Ʈ : x = NULL ', x = NULL);
print_boolean('��ġ 4. �׽�Ʈ : x <> NULL ', x <> NULL);
print_boolean('��ġ 5. �׽�Ʈ : x IS NULL ', x IS NULL);
END;