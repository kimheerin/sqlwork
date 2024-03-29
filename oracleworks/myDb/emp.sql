-- EMP 테이블
CREATE TABLE emp(
    empno     NUMBER(3) PRIMARY KEY,
    ename     VARCHAR2(20) NOT NULL,
    gender    VARCHAR2(6) NOT NULL,
    salary    NUMBER(10), 
    hire_date VARCHAR2(20) NOT NULL
);
--자료 생성
INSERT INTO emp VALUES (100,'이강','남자',3000000,'2019-01-01');
INSERT INTO emp VALUES (101,'김산','여자',2500000,'2020-05-15');
INSERT INTO emp VALUES (102,'오상식','남자',5000000,'2015-02-22');
INSERT INTO emp VALUES (103,'박신입','여자', null,'2023-10-01');

commit;

--1. 입사일 순으로 사원 정렬(오름차순)
SELECT * FROM emp
ORDER BY hire_date;

--2. 급여순으로 사원 정렬(오름차순)
SELECT * FROM emp
ORDER BY salary;

--3. 급여가 300만원 이하인 사원을 급여가 많은 순으로 정렬
SELECT * FROM emp
WHERE salary <= 3000000
ORDER BY salary DESC;

--4. 급여가 없는 사원 출력
SELECT * FROM emp
WHERE salary IS NULL;

--5. 사원 총수 출력
SELECT
COUNT(*) 사원수
FROM emp;

--6. 전체 사원의 급여 합계와 평균 출력
SELECT SUM(salary) AS 합계,
       AVG(salary) AS 평균
FROM emp;

--7. '김산' 사원의 성별을 남자로 변경
UPDATE emp
SET gender = '남자'
WHERE ename = '김산';

ROLLBACK;

--8. '오상식' 사원 삭제
DELETE
FROM emp
WHERE ename = '오상식';

ROLLBACK;
COMMIT;

-- 반올림 : ROUND(숫자, 자리수)
SELECT ename 사원이름,
       salary 급여,
       salary/30 일급,
       ROUND(salary/30, 1) 결과1,
       ROUND(salary/30, 0) 결과2,
       ROUND(salary/30, -1) 결과3
FROM emp;

drop table emp;

SELECT * FROM emp;

--급여가 가장 많은 사원과 가장 적은 사원 검색(OR)
--MAX(SALARY)
--서브쿼리(subquery)
SELECT ename, salary
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp)
OR    salary = (SELECT MIN(salary) FROM emp);