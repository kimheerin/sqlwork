SELECT * FROM orders;
--�ֹ� ���̺��� Į��, �ڷ��� �˻�
DESC orders;

--��� �Լ� : ����(COUNT), �հ�(SUM), ���(AVG), �ִ밪(MAX), �ּҰ�(MIN)
--COUNT(*) : '*' - Į����
--COUNT(Į����) : 
SELECT COUNT(orderid) AS ���ǸŰǼ�
FROM orders;

SELECT SUM(saleprice) AS ���Ǹž�,
       AVG(saleprice) AS ����վ�
FROM orders;

--���� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) as ���Ǹž�
FROM orders;

--���� �ֹ� ������ �� �Ǹž�
--�׷����� ���� �� ��� : GROUP BY �÷���
SELECT custid,
    COUNT(*) AS ��������,
    SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid;

--���� ������ 3�� �̻��� �ڷ� �˻�
--HAVING�� ��� - GROUP BY������ ������ ���� �� ���
SELECT custid,
    COUNT(*) AS ��������,
    SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid
HAVING COUNT(*) >= 3;
    --AND SUM(saleprice) >= 35000;

SELECT COUNT(*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ��
FROM customer;

--��ü ���� �� �ִ밡 ������
SELECT MAX(price) �ְ�, MIN(price) ������
FROM book;

SELECT * FROM customer;

--3�� ��(�Ȼ�)�� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) AS ���Ǹ�
FROM orders
WHERE custid = 3;

--����(Join)
--��������(EQUI JOIN) : EQUAL(=)�� ����ϴ� ����
--���̺�A.Į���� = ���̺�B.Į���� (Į�� - �⺻Ű�� �ܷ�Ű)
--�ֹ� �� �̸� �� ���� �˻�(customer, orders ����)
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

--��Ī ��� ����
--���� �� ����(��������)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name, ord.saleprice DESC;


--3�� ���� ���̵�, �����̸�, �ֹ� ���� �˻�
SELECT custid, bookname, saleprice
FROM orders, book
WHERE orders.bookid = book.bookid
      AND orders.custid = 3;
