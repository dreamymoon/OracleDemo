-- �߼�sql����

-- Լ��
-- ����
-- �������ʱ���������
create table Vendors
(
  vend_id char(10) not null primary key,
  vend_name char(50) not null,
  vend_address char(50),
  vend_city char(50),
  vend_state char(5),
  vend_zip char(10),
  vend_country char(50) null
)
-- ������֮���������
alter table Vendors add constraint primary key(vend_id);

-- ���
-- �������ʱ��������
create table Orders
(
  order_num integer not null primary key,
  order_date date not null,
  cust_id char(10) not null references Customers(cust_id)
);
-- ������֮��������
alter table Orders
add constraint foreign key(cust_id) references Customers(cust_id);

-- ΨһԼ��
-- �� ����

-- ���Լ�� money ��ʲô���͵İ�����һ��ȷ���ǵ�������
-- �������ʱ����Ӽ��Լ��
create table OrderItems1
(
  order_num INTEGER NOT NULL,
  order_item INTEGER NOT NULL,
  prod_id char(10) NOT NULL,
  quantity INTEGER NOT NULL CHECK(quantity > 0),
  item_price money NOT NULL
)
-- ������֮����Ӽ��Լ��
alter table check (gender like '[MF]');

-- ����
create index prod_name_ind on products(prod_name);

-- ������ ����200ҳ�Ĵ��������⣬��һ��ȷ���ǵ�������
create trigger customer_state
after insert or update on Customers
for each row
begin
update Customers
set cust_state = Upper(cust_state)
where Customers.cust_id = :old.cust_id;
end;