-- ��������

-- ʹ��WHERE�Ӿ�,ͬʱʹ��ORDER BY��WHERE�Ӿ�ʱ��ORDER BYҪ��WHERE �Ӿ����
SELECT prod_name,prod_price FROM Products WHERE prod_price = 3.49;

-- WHERE�Ӿ������

-- ��鵥��ֵ
SELECT prod_name,prod_price FROM products WHERE prod_price <10;

-- ��ƥ����
SELECT vend_id,prod_name FROM Products WHERE vend_id <> 'DLL01';
SELECT vend_id,prod_name FROM Products WHERE vend_id != 'DLL01';

--��Χ�Լ��
SELECT prod_name,prod_price FROM Products WHERE prod_price BETWEEN 5 AND 10;

-- ��ֵ���
SELECT prod_name from products where prod_price is null;
select cust_name from customers where cust_email is null;



