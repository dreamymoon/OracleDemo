-- ��ͨ������й���

-- LIKE������,�������е��ַ������ַ���Сд��ͨ�����ƥ��null
select prod_id,prod_name from products where prod_name like 'Fish%';
select prod_id,prod_name from products where prod_name like '%bean bag%';
select prod_id,prod_name from products where prod_name like 'F%y%'; -- ��ѯ��F��ͷy��β

-- �»��ߣ�_��ͨ���
select prod_id,prod_name from products where trim(prod_name) like '_ inch teddy bear';
select prod_id,prod_name from products where trim(prod_name) like '% inch teddy bear';

-- ͨ����ļ���
-- ͨ��������ã���������ʱ�������������ʱ�䳤
-- ���������������ľ�����Ҫʹ��ͨ���
-- ��ͨ������ڿ�ʼ��������ʱ����������
-- ��ϸע��ͨ�����λ�ã��Ŵ�λ�ÿ��ܷ��ز�����Ҫ������