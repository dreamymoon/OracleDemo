-- ���������У����û�й涨��ʾ˳��˳����ܻ���
SELECT prod_name FROM PRODUCTS;

-- ���������
SELECT prod_id, prod_name,prod_price,prod_desc FROM Products;

-- ����������
SELECT * FROM Products;

-- ������ͬ��ֵ DISTINCT�ؼ��ַ���������ǰ��,������DISTINCT֮���������
SELECT vend_id FROM Products;
SELECT DISTINCT vend_id FROM Products;
SELECT DISTINCT vend_id, prod_id FROM Products;

-- ���Ʒ�������,ORACLE����ROWNUM(�м�����)��������
SELECT prod_name FROM Products WHERE ROWNUM <=5;