-- �����Ͳ��ݱ�
create table productsnew
(
prod_id char(10) not null,
vend_id char(10) not null,
prod_name char(254) not null,
prod_price decimal(8,2) not null,
prod_desc varchar(1000) null
)

-- ʹ�� null ֵ oracle ��datetime �����������Ͳ����ڣ�sql server �� datetime
create table ordersnew
(
  order_num integer not null,
  order_date date not null,
  cust_id char(10) not null
);

-- ��� null �� not null �ı�
create table vendorsnew
(
  vend_id char(10) not null,
  vend_name char(50) not null,
  vend_address char(50) ,
  vend_city char(50) ,
  vend_state char(5) ,
  vend_zip char(10) ,
  vend_country char(50)
)

-- ָ��Ĭ��ֵ default Ҫ����not null ֮ǰ
create table orderitemsnew
(
  order_num integer not null,
  order_item integer not null,
  prod_id char(10) not null,
  quantity integer default 1 not null,
  item_price decimal(8,2) not null
)

-- ���±�
-- �����
alter table vendorsnew add vend_phone char(20);
-- ɾ����
alter table vendorsnew drop column vend_phone;

-- ɾ����
drop table custcopy;

-- ��������
rename  custnew to custnews;
rename  custnews to custnew;