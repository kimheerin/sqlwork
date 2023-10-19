--�л� ���̺� ����
CREATE TABLE student (
    snumber  NUMBER PRIMARY KEY, 
    sname    VARCHAR2(20),
    age      NUMBER(2),
    gender   VARCHAR2(6),
    address  VARCHAR2(50),
    mname    VARCHAR2(30),
    FOREIGN KEY(mname) REFERENCES major (mname) --�ܷ�Ű
);

--�л� �߰�
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1001, '�̰�', 22, '����', '����� ������', '����Ʈ�����а�');
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1002, '�ڴ��', 34, '����', '��õ�� ����', '�������ڰ��а�');
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1003, '�쿵��', 31, '����', '', '�������ڰ��а�');
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1003, '�쿵����', 31, '����', '', '�������ڰ��а�');
--�θ�Ű�� ���� �����ʹ� ���� �̻� �߻�
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1003, '���', 29, '����', '����� ���빮��', 'ȸ���а�'); --ȸ���а� ����

--��ü �л� ��ȸ
SELECT * FROM student; 

--'�̰�' �л� �̸� �� ���� ��ȸ
SELECT sname, age FROM student
WHERE sname = '�̰�';

--�̸��� '��'�� �� �л��� ��� ���� ��ȸ
SELECT * FROM student
WHERE sname LIKE '%��%';

--���̰� 30�� �̻��̰�, ������ ������ �л��� ��� ���� ���
SELECT * FROM student
WHERE age >= 30 AND gender = '����';

--�ּҰ� ���� �л��� ���� ���
SELECT * FROM student
WHERE address IS NULL;

--�ּҰ� ���� �л� ����
DELETE FROM student
WHERE address = ' ';

--�ּҰ� NULL�� �����Ϳ� '������ ���뱸'�� �Է�
UPDATE student SET address = '������ ���뱸'
WHERE address IS NULL;

--�����ϱ�(��������-ASC, ��������-DESC)
--�л��� ���̰� ���������� ����
SELECT * FROM student
ORDER BY age;

--�а����� '�������ڰ��а�' �л��߿��� ���̰� ���� ������ �����Ͽ� ���
SELECT * FROM student
WHERE mname = '�������ڰ��а�'
ORDER BY age DESC;

--Ʈ�����(�ѹ��� Ŀ�� �� ���� ��, ��� �� ���� ����)
ROLLBACK;

DROP TABLE student;

