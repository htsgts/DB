REM ��ȿ ������ ��� ��ø�� ��� ���� ���� v_num_partitions��
REM �����ϹǷ� ������� �ʴ� �ĺ��� ������ �߻���Ų��

DECLARE
c_table_name CONSTANT STRING(30) := 'EMP';
 BEGIN
dbms_output.put_line('���̺�'||c_table_name||'�� ��Ƽ�� ���� ���');
DECLARE -- ��ø�� ���
v_num_partitions NUMBER; 
 BEGIN
SELECT COUNT(*)
INTO v_num_partitions
FROM user_tab_partitions
WHERE table_name = c_table_name;
dbms_output.put_line('��Ƽ�� ���� = '||v_num_partitions); -- ������ ����
END;
END;
/