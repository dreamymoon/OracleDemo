-- �����������

-- ��������
-- ORDER BY �־������SELECT ��������һ���־�
SELECT prod_name FROM Products; --û���ض�������
SELECT prod_name FROM Products ORDER BY prod_name; --����
SELECT prod_name FROM Products ORDER BY prod_id; --�����÷Ǽ���������������

-- �����������,��������о�����ͬ��prod_priceֵʱ�ŶԲ�Ʒ��prod_name��������
SELECT prod_id,prod_price,prod_name FROM Products
ORDER BY prod_price,prod_name;

-- ����λ�ý�������,2����prod_price,3����prod_name,��������������
SELECT prod_id, prod_price,prod_name FROM Products ORDER BY 2,3;

--�ƶ������� DESC����ASC���򣬵��������壬Ĭ������
SELECT prod_id,prod_price,prod_name FROM Products ORDER BY prod_price DESC; --��������
SELECT prod_id,prod_price,prod_name FROM Products ORDER BY prod_price DESC, prod_name; --����н������У�����prod_name��Ȼ����������

