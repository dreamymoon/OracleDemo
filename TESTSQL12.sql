-- �����߼�����
-- ʹ�ñ���� ������䲻֪��Ϊʲô����������
select rtrim(vend_name) + '(' + rtrim(vend_country) + ')'  vend_title from Vendors order by vend_name;
select cust_name,cust_contact from CUSTOMERS C, Orders O, OrderItems OI where C.CUST_ID = O.cust_id and OI.order_num = O.order_num and prod_id = 'RGAN01';

-- ������
select cust_id,cust_name,cust_contact from Customers where cust_name = (select cust_name from Customers where cust_contact = 'Jim Jones'); -- ʹ���Ӳ�ѯ
-- ʹ���������ͬ��ѯ
select c1.cust_id,c1.cust_name,c1.cust_contact from Customers c1,Customers c2 where c1.cust_name = c2.cust_name and c2.cust_contact = 'Jim Jones';

-- ��Ȼ����
select C.*, O.order_num,O.order_date,OI.prod_id,OI.quantity,OI.item_price from Customers C,Orders O,OrderItems OI where C.cust_id = O.cust_id 
and OI.order_num = O.order_num and prod_id = 'RGAN01';

-- ������
-- ��������������ᣬ�������й˿ͼ��䶩��
select c.cust_id,o.order_num from Customers c inner join Orders o on c.cust_id = o.cust_id;
-- ������������
select c.cust_id,o.order_num from CUSTOMERS c left outer join Orders o on c.cust_id = o.cust_id;
select c.cust_id,o.order_num from CUSTOMERS c left join Orders o on c.cust_id = o.cust_id; -- û�� outer Ҳ�ǿ��Ե�
select c.cust_id,o.order_num from Customers c right outer join Orders o on c.cust_id = o.cust_id;
select c.cust_id,o.order_num from CUSTOMERS c right join Orders o on c.cust_id = o.cust_id;

-- ȫ������
select c.cust_id,o.order_num from Orders o full join Customers c on o.cust_id = c.cust_id;

-- ʹ�ô��ۺϺ���������
select c.cust_id, count(o.order_num) num_ord from Customers c inner join Orders o on c.cust_id = o.cust_id group by c.cust_id;
select c.cust_id, count(o.order_num) num_ord from customers c left join orders o on c.cust_id = o.cust_id group by c.cust_id;