--���� ����(sub Query) : �μ����� (��ø Ŀ��)
--select ���ο� �� SELECT �˻� ����


--�ְ� ���� ���
--MAX(price)
SELECT MAX(price) FROM BOOK;

--�ְ� ������ �̸� ���
SELECT bookname
FROM book
WHERE price = (SELECT MAX(price) FROM book); 

--������ ������ ���� �ִ� ���� �̸� �˻�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--���� ��� : customer, orders
--������ ������ ���� �մ� ���� �̸� �˻�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
--FROM customer cus INNER JOIN orders ord
--ON cus.custid = ord.custid
--ORDER BY cus.name;