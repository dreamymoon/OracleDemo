-- ���º�ɾ������
update Customers set cust_email = 'kim@thetoystore.com' where cust_id = '1000000005'; -- ������� where �����Ὣ���е��ж�����

-- ���¶����
update Customers set cust_email = 'sam@toyland.com',cust_contact = 'Sam Roberts' where cust_id = '1000000006';

-- ɾ��ĳ���е�ֵ
update Customers set cust_email = null where cust_id = '1000000005';

-- ɾ������
delete from Customers where cust_id = '1000000006'; -- ������� where ������ɾ��������

-- �����ɾ��������
truncate table custcopy;