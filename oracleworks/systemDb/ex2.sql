--테이블 생성(CREATE)
CREATE TABLE ex2(
    col_data DATE,   --날짜 자료형(오늘)
    col_timestamp TIMESTAMP --현재 날짜와 시간
);

--현재 날짜 삽입
INSERT  INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT  INTO ex2(hire_date) VALUES ('2023-09-01');

COMMIT;

SELECT * FROM ex2;

--테이블 변경(ALTER) : 새로운 칼럼 추가
ALTER TABLE ex2 ADD hire_date VARCHAR2(20);

--테이블 삭제
DROP TABLE ex2;