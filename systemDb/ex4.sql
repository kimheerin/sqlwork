--ex4 ���̺� ����
CREATE TABLE ex4 (
    id VARCHAR2(10) PRIMARY KEY,
    passwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2002', '11aa');
INSERT INTO ex4 VALUES ('moon2003', '22bb');
INSERT INTO ex4 VALUES ('today123', '33cc', '20');

commit;

--����(age) Į�� �߰�
alter table ex4 add age number(3);

SELECT * FROM ex4;