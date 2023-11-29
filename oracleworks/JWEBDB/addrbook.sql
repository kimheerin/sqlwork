-- addrbook table ����
CREATE TABLE addrbook(
    bnum      NUMBER PRIMARY KEY,
    username  VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20),
    email     VARCHAR2(20) UNIQUE,
    gender    VARCHAR2(6),
    regdate   TIMESTAMP DEFAULT SYSTIMESTAMP
);
CREATE SEQUENCE seq_bnum NOCACHE; -- �ڵ� ����

INSERT INTO addrbook(bnum, username, tel, email, gender)
VALUES (seq_bnum.NEXTVAL, '����', '010-1111-1111', 'abc@zzz', '��');

commit;

SELECT * from addrbook;

-- aaa@bbb �̸��� ã��
SELECT email from addrbook
WHERE email = 'aaa@bbb';

drop table addrbook;
drop SEQUENCE seq_bnum;

DELETE bnum from addrbook