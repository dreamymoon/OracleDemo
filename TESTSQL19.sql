-- ����������
delete from custnew;
-- ����
rollback;

-- ʹ��commit �۵�����İɣ�����ԭ�ⲻ���Ĵ��뵽����Ǹ���ġ�
set TRANSACTION
delete from vendors where vend_id = 'JTS01';
commit;

-- ���ռλ��
savepoint delete1;
delete from vendors where vend_id = 'JTS01';
-- �ص���ԭ��
rollback to delete1;