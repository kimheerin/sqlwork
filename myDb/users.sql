--자바와 연동할 회원 테이블 생성
CREATE TABLE users (
    userid      VARCHAR2(20) PRIMARY KEY,
    username    VARCHAR2(30) NOT NULL,
    userpwd     VARCHAR2(20) NOT NULL,
    userage     NUMBER(3) NOT NULL,
    useremail   VARCHAR2(30) NOT NULL
);

--회원 추가
INSERT INTO users
VALUES ('today', '고오늘', '12345', 25, 'today@korea.com');

COMMIT;