--�ڹٿ� ������ ȸ�� ���̺� ����
CREATE TABLE users (
    userid      VARCHAR2(20) PRIMARY KEY,
    username    VARCHAR2(30) NOT NULL,
    userpwd     VARCHAR2(20) NOT NULL,
    userage     NUMBER(3) NOT NULL,
    useremail   VARCHAR2(30) NOT NULL
);

--ȸ�� �߰�
INSERT INTO users
VALUES ('today', '�����', '12345', 25, 'today@korea.com');

COMMIT;