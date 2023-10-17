--조건에 관한 함수
--DECORD(칼럼명, 조건, 참인 값, 거짓인 값)
--남자 : 'M', 여자 : 'F' 출력
SELECT ename,
       gender
FROM emp;
--조건 구분(IF - Then과 유사)
/*
   case
        WHEN 조건 THEN 결과;
        WHEN 조건2 THEN 결과2;
        ELSE 결과3
    END 
*/
SELECT ename 사원번호,
       gender 성별,
       CASE
            WHEN gender = '남자' THEN 'M'
            ELSE 'F'
       END gender
FROM emp;

SELECT * FROM emp;

--급여에 따른 직급 표시
--급여 350 이상 '과장' / 급여 250 이상 '대리' / 나머지 사원
SELECT ename 사원명,
       salary 급여,
       CASE
            WHEN salary >= 3500000 THEN '과장'
            WHEN salary >= 2500000 THEN '대리'
            ELSE '사원'
       END 직급
FROM emp;

--salary 개수
SELECT COUNT(salary)
FROM emp;

--null값에 0을 표시
--NVL(인수1, 인수2)
--인수1이 NULL이 아니면 인수1 출력 / 인수1이 NULL이면 인수2 출력
SELECT ename 사원명,
       NVL(salary, 0) 급여
FROM emp;

--NVL() 0으로 처리 후 개수를 세면 카운트됨


--실습테이블 생성
CREATE TABLE k1(
    ID VARCHAR2(3),
    CMT NUMBER(2)
);

--데이터 추가
INSERT INTO k1 VALUES('가', 5);
INSERT INTO k1 VALUES('나', null);
INSERT INTO k1 VALUES('다', 5);
INSERT INTO k1 VALUES('라', null);
INSERT INTO k1 VALUES('마', 10);

SELECT * FROM k1;
SELECT NVL(CMT, 0)
FROM k1;

SELECT NVL(CMT, 0) FROM (K1);

--개수 구하기
SELECT COUNT(CMT) FROM k1; --3
SELECT COUNT(NVL(CMT, 0)) FROM k1; --5

--평균 구하기
SELECT SUM(CMT) /COUNT(CMT) FROM k1; --6.666...7
SELECT SUM(CMT) /COUNT(NVL(CMT, 0)) FROM k1; --4

--최소값 구하기
SELECT MIN(NVL(CMT, 5)) FROM k1; -- 5