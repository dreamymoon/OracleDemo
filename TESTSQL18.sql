-- ʹ�ô洢����
create procedure MailingListCount(
  ListCount OUT INTEGER
)
IS
v_rows integer;
begin
select count(*) into v_rows
from Customers
where not cust_email is null;
ListCount := v_rows;
end;
-- ���ô洢����
var ReturnValue NUMBER
exec MAILINGLISTCOUNT(:ReturnValue);
select ReturnValue; -- ����ɣ�û�� from ��ôִ�а�