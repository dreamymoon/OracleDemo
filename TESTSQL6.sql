-- ���������ֶ�

-- ƴ���ֶ�
-- oracle
select vend_name || '('|| vend_country ||')' from vendors order by vend_name;
-- mysql
-- select contat(vend_name,'(',vend_country,')') from vendors order by vend_name;
select rtrim(vend_name)||'('||rtrim(vend_country)||')' from vendors order by vend_name;-- rtrim()ȥ��ֵ�ұߵĿո� ltrim()ȥ����ߵĿո� trim()ȥ�����ߵĿո�

-- ʹ�ñ���,���ߵ�����
select rtrim(vend_name)||'('||rtrim(vend_country)||')' as vend_title from vendors order by vend_name;

-- ִ����������
select prod_id ,quantity,item_price from orderitems where order_num = 20008;
select prod_id ,quantity,item_price ,quantity*item_price as expanded_price from orderitems where order_num = 20008;



