-- ʹ���α� sql��֪�ػ�������begin�ǲ��ֻᱨ��
declare cursor CustCursor
is
select * from Customers where cust_email is null;
begin
null;
end;

declare type CustCursor is ref cursor
return Customers%rowtype;
declare CustRecord Customers%ROWTYPE;
BEGIN
  open CustCursor;
  loop
  fetch CustCursor into CustRecord;
  exit when CustCursor%NOTFOUND
  close CustCursor;
end;

-- �ر��α�
close CustCursor;