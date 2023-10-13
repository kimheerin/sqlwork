--dept 테이블
CREATE TABLE dept(
    deptid    NUMBER PRIMARY KEY,   --기본키
    deptname VARCHAR2(20) NOT NULL, --NULL 불허
    location VARCHAR2 (20) NOT NULL
);

--부서 자료 추가--
INSERT INTO dept(deptid, deptname, location)
VALUES (10, '인사팀', '서울');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

SELECT * FROM dept;
COMMIT;

--부서 이름에서 '팀'을 제외한 이름 출력
SELECT LENGTH(deptname) 글자수,
        SUBSTR(deptname, 1, length(deptname)-1) 팀명1,
        REPLACE(deptname, '팀', '') 팀명2
FROM dept;
