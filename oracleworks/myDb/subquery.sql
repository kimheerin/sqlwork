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

--������ ��������
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--���� ��� : customer, orders
--������ ������ ���� �ִ� ���� �̸� �˻�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
--FROM customer cus INNER JOIN orders ord
--ON cus.custid = ord.custid
--ORDER BY cus.name;

--FROM���� �ִ� ������� - �ζ��κ��� ��
--�� ��ȣ�� 2 ������ ���� �̸� �� �Ǹž� �˻�
--��, �� ��ȣ�� 2 ����

--���� ����
SELECT cs.name, SUM(od.saleprice)
FROM customer cs, orders od
WHERE cs.custid = od.custid
      AND cs.custid <= 2
GROUP BY cs.name;

--���� ����
SELECT cs.name, SUM(od.saleprice)
FROM (SELECT * FROM customer
      WHERE custid <= 2) cs,
     orders od
WHERE cs.custid = od.custid
  AND cs.custid <= 2
GROUP BY cs.name;

--���� �� ��...
SELECT cus.name ����, ord.saleprice �Ǹž�, cus.custid ����ȣ
FROM customer cus, orders ord
WHERE cus.custid <= 2;

SELECT * FROM product;
SELECT * FROM product_review;

--��Į�� �������� : select���� �ִ� select���� ����
--��ǰ ���� ���̺� ���� ��ǰ�� �˻�
SELECT  a.product_code,
        a.member_id,
        a.content,
        (SELECT b.product_name
        FROM product b
        WHERE a.product_code = b.product_code)product_name,
        a.member_id,
        a.content
FROM product_review a;


-- ���� ����
/* 1. FROM�� ���̺��
2. WHERE, GROUP BY
3. SELECT ��
4. ORDER ��
*/

