-- ��������
-- ������������
insert into Customers values('1000000006','Toy Load','123 Any Street','New York','NY','1111','USA',null,null);
insert into Customers(cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country) values('1000000006','Toy Load','123 Any Street','New York','NY','1111','USA');

-- ���������������
create table CustNew as select * from CUSTOMERS where 1=0;
insert into Customers(cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country)
select cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country from CustNew;

-- ��һ�����Ƶ�����һ����
create table CustCopy as select * from CUSTOMERS where 1=1;