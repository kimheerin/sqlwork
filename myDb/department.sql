--department ���̺� ����
CREATE TABLE department(
    deptno      VARCHAR2(4) PRIMARY KEY,
    deptname    VARCHAR2(20) NOT NULL,
    office      VARCHAR2(20)
);

INSERT INTO department VALUES ('1000', '�λ���', '����');
INSERT INTO department VALUES ('1001', '������', '��õ');
INSERT INTO department VALUES ('1002', '������', '����');
INSERT INTO department(deptno, deptname) VALUES ('1003', '������');

COMMIT;

--employee ���̺� ����
CREATE TABLE employee(
    empno number(3) PRIMARY KEY,
    empname VARCHAR2(20) NOT NULL,
    sal     NUMBER(10),
    createdate DATE DEFAULT SYSDATE,
    deptno      VARCHAR2(4),
    FOREIGN KEY(deptno) REFERENCES department(deptno) -- �ܷ�Ű
);

INSERT INTO employee VALUES(100, '�̰�', 2500000, sysdate, '1000');
INSERT INTO employee VALUES(101, '����', 2000000, sysdate, '1001');
INSERT INTO employee VALUES(102, '�ڴ�', 3000000, sysdate, '1002');
INSERT INTO employee VALUES(103, '���¾�', 3500000, sysdate, '1000');
INSERT INTO employee VALUES(104, '�ֿ���', 5000000, sysdate, '1001');

COMMIT;

SELECT * FROM employee;
SELECT * FROM department;

--'1002' �μ��� ������ -> '�ѹ���' ����
UPDATE department
SET deptname = '�ѹ���'
WHERE deptno = '1002';

--'���¾�'�� �޿��� 3,000,000������ ����
UPDATE employee
SET sal = 3000000
WHERE empname = '���¾�';

--�μ��� �ݿ� �Ѿ� ���ϱ�
SELECT deptno, SUM(sal) �޿��Ѿ�
FROM employee
GROUP BY deptno;

--�μ���, �μ��� �޿� �Ѿ� ���
--employee, department ���̺� ���(����)
SELECT a.deptno �μ�,
       a.deptname �μ���,
       sum(b.sal) �޿�
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY a.deptno, a.deptname;

--ROLLUP() : GROUP BY������ �Ұ�, �Ѱ踦 ����
SELECT a.deptno �μ�,
       a.deptname �μ���,
       sum(b.sal) �޿�
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY ROLLUP(a.deptno, a.deptname);

--CUBB(Į��1, Į��2) : GROUP BY������ ��� �Ұ�, �Ѱ踦 ��ü������ ����
SELECT a.deptno �μ�,
       a.deptname �μ���,
       sum(b.sal) �޿�
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY CUBE(a.deptno, a.deptname);

--SUM(Į����), SUM OVER(ORDER BY Į����) ���� �հ�
SELECT  empno,
        empname,
        sal,
        SUM(sal) OVER(ORDER BY empno) SAL_SUM,
FROM employee;

--���� RANK() �Լ�
SELECT  empno,
        empname,
        sal,
        RANK() OVER(ORDER BY empno DESC) "sal_rank",
        DENSE_RANK() OVER(ORDER BY sal DESC) �޿�_rank2
FROM employee;

