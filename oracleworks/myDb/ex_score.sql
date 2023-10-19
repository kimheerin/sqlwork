--ROWNUM(로우번호, 행번호)
--행 수를 제한하고 싶을 때 사용함 (SUDO COLUME)

CREATE TABLE ex_score(
    name    VARCHAR2(10),
    score   NUMBER(3)
);
INSERT INTO ex_score VALUES ('김하나', 94);
INSERT INTO ex_score VALUES ('김둘', 94);

INSERT INTO ex_score VALUES ('김셋', 100);
INSERT INTO ex_score VALUES ('김넷', 97);
INSERT INTO ex_score VALUES ('김다섯', 87);
INSERT INTO ex_score VALUES ('김여섯', 87);
INSERT INTO ex_score VALUES ('김일곱', 91);
INSERT INTO ex_score VALUES ('김여덟', 77);
INSERT INTO ex_score VALUES ('김아홉', 80);
INSERT INTO ex_score VALUES ('김열', 95);

--5행까지의 정보 출력
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM <= 5;

--1~6까지 가져오기
--ROWNUM은 1부터 시작함
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM >= 1 AND ROWNUM <= 6;

--1~5까지 가져오기
--BETWEEN
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM BETWEEN 1 AND 5;

--모든 정보를 내림차순(점수 높은 순)으로 출력
SELECT ROWNUM, name, score
FROM ex_score
ORDER BY score DESC;

--점수가 높은 순으로 5명 출력(모든 정보)
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM <=5
ORDER BY score DESC;

--성적을 내림차순으로 정렬 후 5개를 출력
SELECT ROWNUM, name, score
FROM (
    SELECT ROWNUM, name, score
    FROM ex_score
    ORDER BY score DESC) 
WHERE ROWNUM <=5;

--성적 순위
SELECT  name,
        score,
        RANK() OVER(ORDER BY score DESC) 순위1,
        DENSE_RANK() OVER(ORDER BY score DESC) 순위2
FROM ex_score;



