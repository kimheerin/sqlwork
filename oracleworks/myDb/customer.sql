--�� ���̺� ����
CREATE TABLE customer (
    custid    NUMBER PRIMARY KEY,
    name      VARCHAR2(40) NOT NULL,
    address   VARCHAR2(50) NOT NULL,  
    phone     VARCHAR2(20) 
);

--�� ����
INSERT INTO customer(custid, name, address, phone)
VALUES (1, '������', '���� ��ü����', '000-5000-0001');
INSERT INTO customer(custid, name, address, phone)
VALUES (2, '����', '���ѹα� ����', '000-6000-0001');
INSERT INTO customer(custid, name, address, phone)
VALUES (3, '�Ȼ�', '���ѹα� ���ֱ�����', '000-7000-0001');
INSERT INTO customer(custid, name, address, phone)
VALUES (4, '������', '�̱� �����', '');
INSERT INTO customer(custid, name, address, phone)
VALUES (5, '�ո���', '���� ��Ʈ��', '000-8000-0001');

COMMIT;