-- jweb user ����(db)

--c##�� ������ �ʴ� ���
alter session set "_oracle_script" = true;

-- jweb user ����(db) ����
create user jweb identified by pwjweb;

-- ���� �ο�, ���ҽ� ���� Ȯ��
grant connect, resource, dba to jweb;