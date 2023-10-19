--department 테이블 생성
CREATE TABLE department(
    deptno      VARCHAR2(4) PRIMARY KEY,
    deptname    VARCHAR2(20) NOT NULL,
    office      VARCHAR2(20)
);

INSERT INTO department VALUES ('1000', '인사팀', '서울');
INSERT INTO department VALUES ('1001', '전산팀', '인천');
INSERT INTO department VALUES ('1002', '전산팀', '수원');
INSERT INTO department(deptno, deptname) VALUES ('1003', '영업팀');

COMMIT;

--employee 테이블 생성
CREATE TABLE employee(
    empno number(3) PRIMARY KEY,
    empname VARCHAR2(20) NOT NULL,
    sal     NUMBER(10),
    createdate DATE DEFAULT SYSDATE,
    deptno      VARCHAR2(4),
    FOREIGN KEY(deptno) REFERENCES department(deptno) -- 외래키
);

INSERT INTO employee VALUES(100, '이강', 2500000, sysdate, '1000');
INSERT INTO employee VALUES(101, '강산', 2000000, sysdate, '1001');
INSERT INTO employee VALUES(102, '박달', 3000000, sysdate, '1002');
INSERT INTO employee VALUES(103, '강태양', 3500000, sysdate, '1000');
INSERT INTO employee VALUES(104, '최우주', 5000000, sysdate, '1001');

COMMIT;

SELECT * FROM employee;
SELECT * FROM department;

--'1002' 부서명 전산팀 -> '총무팀' 변경
UPDATE department
SET deptname = '총무팀'
WHERE deptno = '1002';

--'강태양'의 급여를 3,000,000원으로 변경
UPDATE employee
SET sal = 3000000
WHERE empname = '강태양';

--부서별 금여 총액 구하기
SELECT deptno, SUM(sal) 급여총액
FROM employee
GROUP BY deptno;

--부서명, 부서별 급여 총액 출력
--employee, department 테이블 사용(조인)
SELECT a.deptno 부서,
       a.deptname 부서명,
       sum(b.sal) 급여
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY a.deptno, a.deptname;

--ROLLUP() : GROUP BY절에서 소계, 총계를 만듦
SELECT a.deptno 부서,
       a.deptname 부서명,
       sum(b.sal) 급여
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY ROLLUP(a.deptno, a.deptname);

--CUBB(칼럼1, 칼럼2) : GROUP BY절에서 모든 소계, 총계를 입체적으로 만듦
SELECT a.deptno 부서,
       a.deptname 부서명,
       sum(b.sal) 급여
FROM department a, employee b
WHERE a.deptno = b.deptno
GROUP BY CUBE(a.deptno, a.deptname);

--SUM(칼럼명), SUM OVER(ORDER BY 칼럼명) 누적 합계
SELECT  empno,
        empname,
        sal,
        SUM(sal) OVER(ORDER BY empno) SAL_SUM,
FROM employee;

--순위 RANK() 함수
SELECT  empno,
        empname,
        sal,
        RANK() OVER(ORDER BY empno DESC) "sal_rank",
        DENSE_RANK() OVER(ORDER BY sal DESC) 급여_rank2
FROM employee;

