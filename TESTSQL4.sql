-- �߼����ݹ���

-- ���WHERE�Ӿ�

-- AND������,�������Ҫ�ö��and����
select prod_id,prod_price,prod_name from products where vend_id = 'DLL01' and prod_price <=4 and  prod_id = 'BNBG01';

-- OR������
select prod_name,prod_price from products where vend_id ='DLL01' or vend_id = 'BRS01';

-- ��ֵ˳��,��ִ��and��������ִ��or����
SELECT prod_name,prod_price from products where vend_id ='DLL01' or vend_id = 'BRS01' and prod_price >= 10;
SELECT prod_name,prod_price from products where (vend_id ='DLL01' or vend_id = 'BRS01') and prod_price >= 10;

-- IN������ IN��������or������ִ�еĸ��죬IN���ܰ���select���
select prod_name,vend_id,prod_price from products where vend_id in ('DLL01','BRS01') order by prod_name;

-- NOT������
select prod_name from products where not vend_id = 'DLL01' order by prod_name;