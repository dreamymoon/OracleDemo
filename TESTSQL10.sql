-- ʹ���Ӳ�ѯ

-- �����Ӳ�ѯ���й���
select order_num from orderitems where prod_id = 'RGAN01';
select cust_id from orders where order_num in (20007,20008);
-- ��ִ�������ڣ���ִ��������
select cust_id from orders where order_num IN (select order_num from orderitems where prod_id = 'RGAN01');

select cust_name,cust_contact from customers where cust_id in (select cust_id from orders where order_num IN (select order_num from orderitems where prod_id = 'RGAN01'));

-- ��Ϊ�����ֶ�ʹ���Ӳ�ѯ ��ȫ�޶�����
select cust_name,cust_state,(
select count(*) from orders where orders.cust_id=customers.cust_id) as orders
from customers order by cust_name;

-- ���޶�������cust_id����orders����ֶ�
select cust_name,cust_state,(
select count(*) from orders where cust_id = cust_id) as orders 
from customers order by cust_name;