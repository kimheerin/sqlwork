--게시판 테이블 생성
CREATE TABLE boards (
    bno       NUMBER PRIMARY KEY,
    btitle    VARCHAR2(100) NOT NULL,
    bcontent  CLOB NOT NULL,    --CLOB(Character Large Of byte)
    bwriter   VARCHAR2(50) NOT NULL,
    bdate     DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),
    bfiledata BLOB              --BLOB(Binary Large Of byte)
);

--시퀀스 생성
CREATE SEQUENCE seq_bno NOCACHE;

--게시글 추가
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartphone', '아이폰15pro.', 'today');

INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartphone', '아이폰15pro.', 'today',
        SYSDATE, NULL, NULL);

COMMIT;

SELECT * FROM boards
WHERE bwriter = 'choieunho123'
ORDER BY bno DESC;

--글번호 5번의 제목을 '아이폰5변경'으로 변경
UPDATE boards
SET btitle = '아이폰5변경',
    bcontent = '변경됐나'
    WHERE bno = 5;
    
SELECT * FROM boards;

--3번 게시글 삭제
DELETE FROM boards
WHERE bno = 3;
