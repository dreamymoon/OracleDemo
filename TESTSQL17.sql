-- ʹ����ͼ
-- ������ͼ
-- ������ͼ�򻯸��ӵ�����
create view ProductCustomers AS 
SELECT cust_name, cust_contact,prod_id 
from Customers,Orders,OrderItems
where Customers.cust_id = Orders.cust_id
and OrderItems.order_num = orders.order_num;
-- ���������˲�Ʒ RGAN01 �Ĺ˿�
select cust_name,cust_contact from ProductCustomers where prod_id = 'RGAN01';

-- ����ͼ���¸�ʽ��������������
select rtrim(vend_name) || '(' || rtrim(vend_country) || ')' as vend_title from Vendors order by vend_name;
create view VendorLocations as
select rtrim(vend_name) || '(' || rtrim(vend_country) || ')' as vend_title from Vendors order by vend_name;
select * from VendorLocations;

-- ����ͼ���˲���Ҫ������
create view CustomersEMailList as
select cust_id,cust_name,cust_email
from customers
where cust_email is not null;

-- ʹ����ͼ������ֶ�
create view OrderItemsExpanded as
select order_num,prod_id,quantity,item_price,quantity*item_price expanded_price from OrderItems;
select * from OrderItemsExpanded;