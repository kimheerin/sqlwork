-- EMP ���̺�
CREATE TABLE emp(
    empno     NUMBER(3) PRIMARY KEY,
    ename     VARCHAR2(20) NOT NULL,
    gender    VARCHAR2(6) NOT NULL,
    salary    NUMBER(10), 
    hire_date VARCHAR2(20) NOT NULL
);
--�ڷ� ����
INSERT INTO emp VALUES (100,'�̰�','����',3000000,'2019-01-01');
INSERT INTO emp VALUES (101,'���','����',2500000,'2020-05-15');
INSERT INTO emp VALUES (102,'�����','����',5000000,'2015-02-22');
INSERT INTO emp VALUES (103,'�ڽ���','����', null,'2023-10-01');

commit;

--1. �Ի��� ������ ��� ����(��������)
SELECT * FROM emp
ORDER BY hire_date;

--2. �޿������� ��� ����(��������)
SELECT * FROM emp
ORDER BY salary;

--3. �޿��� 300���� ������ ����� �޿��� ���� ������ ����
SELECT * FROM emp
WHERE salary <= 3000000
ORDER BY salary DESC;

--4. �޿��� ���� ��� ���
SELECT * FROM emp
WHERE salary IS NULL;

--5. ��� �Ѽ� ���
SELECT
COUNT(*) �����
FROM emp;

--6. ��ü ����� �޿� �հ�� ��� ���
SELECT SUM(salary) AS �հ�,
       AVG(salary) AS ���
FROM emp;

--7. '���' ����� ������ ���ڷ� ����
UPDATE emp
SET gender = '����'
WHERE ename = '���';

ROLLBACK;

--8. '�����' ��� ����
DELETE
FROM emp
WHERE ename = '�����';

ROLLBACK;
COMMIT;

-- �ݿø� : ROUND(����, �ڸ���)
SELECT ename ����̸�,
       salary �޿�,
       salary/30 �ϱ�,
       ROUND(salary/30, 1) ���1,
       ROUND(salary/30, 0) ���2,
       ROUND(salary/30, -1) ���3
FROM emp;

drop table emp;

SELECT * FROM emp;

--�޿��� ���� ���� ����� ���� ���� ��� �˻�(OR)
--MAX(SALARY)
--��������(subquery)
SELECT ename, salary
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp)
OR    salary = (SELECT MIN(salary) FROM emp);