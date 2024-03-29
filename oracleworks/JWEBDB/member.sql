-- jweb, member 테이블 생성
CREATE TABLE member(
    mno         INT,
    id          VARCHAR(20) NOT NULL UNIQUE,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    email       VARCHAR2(50),
    gender      VARCHAR2(6),
    joindate    TIMESTAMP DEFAULT SYSTIMESTAMP,
    PRIMARY KEY(mno)
);
CREATE SEQUENCE seq_mno NOCACHE;

INSERT INTO member(mno, id, passwd, name, email, gender)
VALUES(seq_mno.NEXTVAL, 'khit', 'm1234567', '김희린', 'khit@gmail.com', '여');

COMMIT;

SELECT * FROM member;

--데이터 삭제(순서대로)
TRUNCATE TABLE member;
DROP SEQUENCE seq_mno;

--계정이 'khit'인 회원의 정보 보기
SELECT * FROM member
WHERE id = "khit";

--계정과 암호가 일치한 회원 찾기
SELECT * FROM member
WHERE id = "khit" AND passwd ="m1234567";
