-- ��������

--AVG����,��ƽ��ֵ,����ֵΪnull����
select prod_price ,vend_id from products;
select avg(prod_price) as avg_price from products;
select avg(prod_price) as avg_price from products where vend_id = 'DLL01';
select avg(distinct prod_price) as avg_price from products where vend_id = 'DLL01';--��Ϊ�����Ʒ�о�����ͬ�Ľϵͼ۸�

-- COUNT����,����nullֵ
select * from customers;
select count(*) as num_cust from customers;

-- MAX����
select max(prod_price) as max_price from products;
select max(vend_id) from products; --���ڷ���ֵ����ʹ��max���ݣ��᷵�����һ��

-- MIN����
select min(prod_price) from products;
select min(vend_id) from products;

--sum��������������ָ����ֵ�ĺ�
select sum(quantity) as items_ordered from orderitems where order_num = 20005;
select sum(item_price*quantity) as total_price from orderitems where order_num = 20005;

--��ϾۺϺ���
select count(*) as num_items,min(prod_price) as price_min,max(prod_price) as price_max,avg(prod_price) as price_avg from products;