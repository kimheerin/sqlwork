-- �� �� �� �� --

--1. ��� ���� �̸��� �ּҸ� �Է�
SELECT customer.name, customer.address
FROM customer;

--2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ �˻�
SELECT customer.name, customer.address, customer.phone
FROM customer;

--3. �ּҰ� '����'�� �� �˻�
SELECT customer.custid, customer.name, customer.address, customer.phone
FROM customer
WHERE customer.address LIKE '%����%';

--4. ������ '����' Ȥ�� '�Ȼ�'�� �� �˻�
SELECT customer.custid, customer.name, customer.address, customer.phone
FROM customer
WHERE customer.name IN('����', '�Ȼ�');

--5. �ּҰ� '���ѹα�'�� �ƴ� �� �˻�
SELECT * FROM customer
WHERE address NOT LIKE '%���ѹα�%';

--6. ��ȭ��ȣ�� ���� �� �˻�
SELECT * FROM customer
WHERE phone IS NULL;

--7. ���� �̸��� ����
SELECT * FROM customer
ORDER BY name; 

--8. ���� �� �ο���
SELECT COUNT(*) AS �Ѱ���
FROM customer;
