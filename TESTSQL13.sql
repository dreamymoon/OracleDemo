-- ��ϲ�ѯ
-- ʹ�� union
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI');
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';

select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';
-- ͬ�Ƚ���� where ��ѯ
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI') or cust_name = 'Fun4All';
-- ��������ƥ�����,DBMS �Ὣ�ظ�����Ҳ����
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union all
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';

-- ����ϲ�ѯ�ṹ��������ֻ��ʹ��һ�� order by �Ӿ�
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All'
order by cust_name,cust_contact;
