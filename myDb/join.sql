--���� : �� ���̺��� �����ϴ� ���
--�������� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
--�ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻�
--���̸����� ����(�ڵ� �׷�ȭ)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--�ֹ����� ���� �����͵� ��� �˻�
--������ ��ġ���� ���� ���̺� +�� �־� ��
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻�
--'������'�� ���ų��� ���
--�ֹ��� ����
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻��Ͻÿ� 
--�ֹ� �ݾ��� �Ѿ��� ���(group by ���)
--'�迬��'�� �� �ֹ� �ݾ� ���(having ���� ������ ��)
select sum(ord.saleprice)
from customer cus, orders ord
where cus.custid = ord.custid
group by cus.name
 having cus.name = '����'
order by cus.name;

--���� �̸�, �ֹ��� ���� �̸�, �ֹ���, �ֹ��ݾ�
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid   --�⺻Ű = �ܷ�Ű
    AND bk.bookid = ord.bookid;
    
--ǥ�� ���� ANCI SQL
--���� ���� INNER JOIN
--��(customer)�� ���� �ֹ�(order)�� ���� ������ �� ����� �ֹ� ���� �ݾ� �˻�
SELECT cus.name, ord.saleprice
FROM customer cus INNER join orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;

--�ܺ� ����(OUTER JOIN)
--JOIN ���ǿ� �������� �ʴ� �����Ϳ��� ����ϴ� ���
--��(customer)�� ���� �ֹ�(order)�� ���� ������ �� �ֹ����� ���� �����͸� �����Ͽ�
--����� �ֹ� ���� �ݾ� ���
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;


