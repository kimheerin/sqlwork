--���� Ÿ�� ���� �Լ�
--���밪 ���ϱ�
--���� ���̺�
SELECT ABS(-10) FROM dual;

--�ݿø� : ROUND(����, �ڸ���)
SELECT ROUND(127.67, 1) FROM dual;  --�Ҽ� ù° �ڸ�
SELECT ROUND(127.67, 0) FROM dual;  --0�� �ڸ�
SELECT ROUND(127.67, -1) FROM dual; --1�� �ڸ��� �ݿø�
SELECT ROUND(127.67, -2) FROM dual; --10�� �ڸ��� �ݿø�

--����(����) : TRUNC(����, �ڸ���)
SELECT TRUNC(127.67, 1) FROM dual;  --�Ҽ� ù° �ڸ����� ����� ����
SELECT TRUNC(127.6, 0) FROM dual;  --0�� �ڸ�
SELECT TRUNC(127.67, -1) FROM dual; --1�� �ڸ�
SELECT TRUNC(127.67, -2) FROM dual; --10�� �ڸ�

--����(����) : FLOOR(����) - ������ ����
SELECT FLOOR(127.67) FROM dual;  --�Ҽ� ù° �ڸ����� ����� ����
SELECT FLOOR(127.6) FROM dual; 

--�ŵ� ���� : POWER 2�� 10���� = (2,10)
SELECT POWER(2, 3) FROM dual;

--���� Ÿ��
--�ҹ��ڷ� ���� : LOWER()
--�빮�ڷ� ���� : UPPER()
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd ') FROM dual;

--���ڿ� �Ϻ� ���� : SUBSTR(���ڿ�, �ε���, �ڸ���)
--�ε����� 1������ ����
SELECT SUBSTR('abcd', 1, 2) FROM dual; 

--���ڿ��� ã�� �ٲٱ� : REPLACE(���ڿ�, ���� �� ����, ���� �� ����)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

--���ڿ��� ���� : LENGTH()
SELECT LENGTH('abcd') FROM dual;

--����ŷ
--LPAD(���ڿ�, ����, Ư������) - ���ʺ��� Ư�����ڷ� ä��
--RPAD(���ڿ�, ����, Ư������) - �����ʺ��� Ư�����ڷ� ä��
SELECT LPAD('today', 7, '*') FROM dual;
SELECT RPAD('today', 7, '*') FROM dual;

--�ֹ� ���̺�
--���� ��� �ֹ� �ݾ�
--SUM �հ� / AVG ��� / COUNT ����
SELECT SUM(saleprice) AS �հ�ݾ�,
       COUNT(saleprice) AS �ֹ��Ǽ�
FROM orders;

--�ֹ� ���̺�
--���� ��� �ֹ� �ݾ� �ݿø�(��� ����)
SELECT SUM(saleprice) AS �հ�ݾ�,
       COUNT(saleprice) AS �ֹ��Ǽ�,
       ROUND(AVG(saleprice), -2) AS ����ֹ��ݾ�
FROM orders
GROUP BY custid;

--���� ���̺�
--�������� ���ڼ� : �ѱ�-3byte, ����, Ư������-1byte
SELECT bookname,
       LENGTH(bookname) AS ���ڼ�,
       LENGTHB(bookname) AS ����Ʈ��
FROM book;

--'�౸'�� '��'�� ����Ͽ� �˻�
SELECT bookname,
       REPLACE(bookname, '�౸', '��') bookname
FROM book;

--�� ���̺�
--�� �̸��� ���� ���� ���� ���� �ο���
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);

