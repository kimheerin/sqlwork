--���ǿ� ���� �Լ�
--DECORD(Į����, ����, ���� ��, ������ ��)
--���� : 'M', ���� : 'F' ���
SELECT ename,
       gender
FROM emp;
--���� ����(IF - Then�� ����)
/*
   case
        WHEN ���� THEN ���;
        WHEN ����2 THEN ���2;
        ELSE ���3
    END 
*/
SELECT ename �����ȣ,
       gender ����,
       CASE
            WHEN gender = '����' THEN 'M'
            ELSE 'F'
       END gender
FROM emp;

SELECT * FROM emp;

--�޿��� ���� ���� ǥ��
--�޿� 350 �̻� '����' / �޿� 250 �̻� '�븮' / ������ ���
SELECT ename �����,
       salary �޿�,
       CASE
            WHEN salary >= 3500000 THEN '����'
            WHEN salary >= 2500000 THEN '�븮'
            ELSE '���'
       END ����
FROM emp;

--salary ����
SELECT COUNT(salary)
FROM emp;

--null���� 0�� ǥ��
--NVL(�μ�1, �μ�2)
--�μ�1�� NULL�� �ƴϸ� �μ�1 ��� / �μ�1�� NULL�̸� �μ�2 ���
SELECT ename �����,
       NVL(salary, 0) �޿�
FROM emp;

--NVL() 0���� ó�� �� ������ ���� ī��Ʈ��


--�ǽ����̺� ����
CREATE TABLE k1(
    ID VARCHAR2(3),
    CMT NUMBER(2)
);

--������ �߰�
INSERT INTO k1 VALUES('��', 5);
INSERT INTO k1 VALUES('��', null);
INSERT INTO k1 VALUES('��', 5);
INSERT INTO k1 VALUES('��', null);
INSERT INTO k1 VALUES('��', 10);

SELECT * FROM k1;
SELECT NVL(CMT, 0)
FROM k1;

SELECT NVL(CMT, 0) FROM (K1);

--���� ���ϱ�
SELECT COUNT(CMT) FROM k1; --3
SELECT COUNT(NVL(CMT, 0)) FROM k1; --5

--��� ���ϱ�
SELECT SUM(CMT) /COUNT(CMT) FROM k1; --6.666...7
SELECT SUM(CMT) /COUNT(NVL(CMT, 0)) FROM k1; --4

--�ּҰ� ���ϱ�
SELECT MIN(NVL(CMT, 5)) FROM k1; -- 5