--사원 테이블 생성
CREATE TABLE employee(
    empid   NUMBER(3),
    empname VARCHAR(20) NOT NULL,
    age     NUMBER(3),
    deptid  Number, 
    PRIMARY KEY(empid),  --기본키
    FOREIGN KEY(deptid) REFERENCES department(deptid) --외래키
);

--사원 자료 추가
INSERT INTO employee(empid, empname, age, deptid)
VALUES (101, '홍길동', 30, 10);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102, '이길동', 31, 30); --부서코드가 없어서 외래키 제약조건 위배
INSERT INTO employee(empid, empname, deptid)
VALUES (103, '나길동', 20);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (104, '정이길동', 45, 20);

--사원의 모든 정보 출력
SELECT * FROM employee;

--사원 이름과 나이 칼럼 출력
SELECT empname, age FROM employee;

--사원 이름이 이길동인 데이터 출력
SELECT * FROM employee
WHERE empname = '이길동';

--나이 30세 이상인 사원 검색
SELECT * FROM employee
WHERE age > 30;

--나이가 없는 
SELECT * FROM employee
WHERE age is null;

--문자열 검색(사원명에서 '이'를 포함하거나 ^또는^ 나이가 지정되지 않은 사원 검색)
SELECT * FROM employee
WHERE empname LIKE '%이%' OR age is null; -- %% : 포함돼 있다.(퍼센트임)

--부서번호가 20인 사원 검색
SELECT * FROM emplotee
WHERE deptid = 20;

commit;

DROP TABLE employee;
