--�μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid    NUMBER PRIMARY KEY,   --�⺻Ű
    deptname VARCHAR2(20) NOT NULL, --NULL ����
    location VARCHAR2 (20) NOT NULL
);

--�μ� �ڷ� �߰�--
INSERT INTO department(deptid, deptname, location)
VALUES (10, '�λ���', '����');
INSERT INTO department(deptid, deptname, location)
VALUES (20, '������', '��õ');
INSERT INTO department(deptid, deptname, location)
VALUES (30, '��������', '����');

--�ڷ� �˻�(Ư�� Į�� �˻�)
SELECT deptid, deptname FROM department;

--��� Į�� ����(* ���)
SELECT * FROM department;

--Ư���� ������(��:�ο�) �˻� -> where ���ǹ� ���
--�μ� �̸��� �������� row(���ڵ�) �˻�
SELECT * FROM department
WHERE deptname = '������';

--�ڷ� ����(�μ� �̸��� ������ -> �濵��)
UPDATE department SET deptname = '�濵��'
WHERE deptid = 20; 

rollback;   --commit ������ ���� �� ��� ����

--�ڷ� ����(�μ� ��ȣ�� 30���� �������� ����)
DELETE FROM department
WHERE deptid = 30;

COMMIT;

drop table department;