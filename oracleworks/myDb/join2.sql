--���� : �� ���̺��� �����ϴ� ���
--�������� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
--�ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻�
--���̸����� ����(�ڵ� �׷�ȭ)
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name;

--�ֹ����� ���� �����͵� ��� �˻�
--������ ��ġ���� ���� ���̺� +�� �־� ��
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻�
--'������'�� ���ų��� ���
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
    AND cus.name = '������'
ORDER BY cus.name;

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻�
--�ֹ� �ݾ��� �Ѿ��� ���(group by ���)
--'�迬��'�� �� �ֹ� �ݾ� ���(having���� ������ ��)
SELECT SUM(ord.saleprice)
from customer cus, orders ord
where cus.custid = ord.custid
group by cus.name, ord.custid
having cus.name = '����'
order by cus.name;

--���� �̸�, �ֹ��� ���� �̸�, �ֹ���, �ֹ��ݾ�
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid   --�⺻Ű = �ܷ�Ű
    AND bk.bookid = ord.bookid;
