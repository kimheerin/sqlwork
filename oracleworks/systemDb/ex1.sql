--스키마 :system
--테이블 생성
CREATE TABLE ex1(
    colum1 CHAR(10),  --고정길이 문자(1Byte)
    colum2 VARCHAR2(10) --가변길이 문자 (1Byte)
);

--데이터 추가(이미 실행하면 변경할 수 없음)
INSERT INTO ex1(colum1,colum2) VALUES('abc','abc');
INSERT INTO ex1 VALUES('당산','당산');

--데이터 조회
SELECT colum1
        ,LENGTH(colum1)
        ,colum2,LENGTH(colum2)FROM ex1;

--트랜섹션 : COMMIT, ROLLBACK
COMMIT;