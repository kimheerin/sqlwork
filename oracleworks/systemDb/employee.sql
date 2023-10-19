--��� ���̺� ����
CREATE TABLE employee(
    empid   NUMBER(3),
    empname VARCHAR(20) NOT NULL,
    age     NUMBER(3),
    deptid  Number, 
    PRIMARY KEY(empid),  --�⺻Ű
    FOREIGN KEY(deptid) REFERENCES department(deptid) --�ܷ�Ű
);

--��� �ڷ� �߰�
INSERT INTO employee(empid, empname, age, deptid)
VALUES (101, 'ȫ�浿', 30, 10);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102, '�̱浿', 31, 30); --�μ��ڵ尡 ��� �ܷ�Ű �������� ����
INSERT INTO employee(empid, empname, deptid)
VALUES (103, '���浿', 20);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (104, '���̱浿', 45, 20);

--����� ��� ���� ���
SELECT * FROM employee;

--��� �̸��� ���� Į�� ���
SELECT empname, age FROM employee;

--��� �̸��� �̱浿�� ������ ���
SELECT * FROM employee
WHERE empname = '�̱浿';

--���� 30�� �̻��� ��� �˻�
SELECT * FROM employee
WHERE age > 30;

--���̰� ���� 
SELECT * FROM employee
WHERE age is null;

--���ڿ� �˻�(������� '��'�� �����ϰų� ^�Ǵ�^ ���̰� �������� ���� ��� �˻�)
SELECT * FROM employee
WHERE empname LIKE '%��%' OR age is null; -- %% : ���Ե� �ִ�.(�ۼ�Ʈ��)

--�μ���ȣ�� 20�� ��� �˻�
SELECT * FROM emplotee
WHERE deptid = 20;

commit;

DROP TABLE employee;
