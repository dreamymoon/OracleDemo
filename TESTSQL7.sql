-- ʹ�ú�����������

-- �ı�������
select vend_name,upper(vend_name) as vend_name_upcase from vendors order by vend_name; -- ���ı�ת��Ϊ��д
select vend_name,length(vend_name) as vend_name_length from vendors order by vend_name; --����ַ����ĳ���
select vend_name,lower(vend_name) as vend_name_lowercase from vendors order by vend_name; -- ���ı�ת��ΪСд

--�����ַ�����soundexֵ��soundex��һ�����κ��İ洮ת��Ϊ������������ʾ���ַ�ģʽ���㷨
select vend_name,soundex(vend_name) as vend_name_sound from vendors order by vend_name; 
-- customers����һ���˿�kids place,����ϵ����Michelle Green,��������һ�����������,�����ϵ��Ӧ����Michael Green,ʹ��soundex(),���з������Ƶļ���
select cust_name,cust_contact from customers where soundex(cust_contact) = soundex('Michael Green');

-- ���ں�ʱ�䴦����
select order_num from orders where to_number(to_char(order_date,'yyyy')) = 2012;
select order_num from orders where to_number(to_char(order_date,'MM')) = 2;
select order_num from orders where to_number(to_char(order_date,'dd')) = 12;
-- select order_num from orders where order_date between to_date('01-01-2012') and to_date('12-31-2012'); oracle������



