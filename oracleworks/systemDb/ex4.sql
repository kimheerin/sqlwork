--ex4 ���̺� ����
CREATE TABLE ex4 (
    id VARCHAR2(10) PRIMARY KEY,
    passwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2002', '11aa');
INSERT INTO ex4 VALUES ('moon2003', '22bb');
INSERT INTO ex4 VALUES ('today123', '33cc', '20');
INSERT INTO ex4(id, passwd) VALUES ('today321', '1234567aa');
--�ڷ����� ũ�⺸�� ū �����ʹ� �Է� �Ұ�
INSERT INTO ex4(id, passwd, age) VALUES ('today321', '123456789abcd', 25);

commit;

--����(age) Į�� �߰�
alter table ex4 add age number(3);

--�ڷ����� ũ�� ����(valchar2 10 -> 12)
ALTER TABLE ex4 MODIFY passwd VARCHAR2(12);

SELECT * FROM ex4;

