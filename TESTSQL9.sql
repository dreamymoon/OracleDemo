--��������

-- ��������
select vend_id,count(*) as num_prods from products where vend_id='DLL01' group by vend_id;

-- HAVING���˷���
select cust_id,count(*) as orders from orders group by cust_id having count(*) >=2;
-- ִ��˳���������ң�ִ��where��ִ��having
select vend_id,count(*) as num_prods from products where prod_price>=4 group by vend_id having count(*)>=2;

--���������
select order_num,count(*) as items from orderItems group by order_num having count(*)>=3 order by items,order_num;

--select �Ӿ�˳��
select -> from -> where -> group by -> having -> order by
