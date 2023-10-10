--부서와 사원 테이블 생성
CREATE TABLE department(
    deptid    NUMBER PRIMARY KEY,   --기본키
    deptname VARCHAR2(20) NOT NULL, --NULL 불허
    location VARCHAR2 (20) NOT NULL
);

--부서 자료 추가--
INSERT INTO department(deptid, deptname, location)
VALUES (10, '인사팀', '서울');
INSERT INTO department(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO department(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

--자료 검색(특정 칼럼 검색)
SELECT deptid, deptname FROM department;

--모든 칼럼 선택(* 사용)
SELECT * FROM department;

--특정한 데이터(행:로우) 검색 -> where 조건문 사용
--부서 이름이 전산팀인 row(레코드) 검색
SELECT * FROM department
WHERE deptname = '전산팀';

--자료 수정(부서 이름을 관리팀 -> 경영팀)
UPDATE department SET deptname = '경영팀'
WHERE deptid = 20; 

rollback;   --commit 이전에 실행 시 취소 가능

--자료 삭제(부서 번호가 30번인 마케팅팀 삭제)
DELETE FROM department
WHERE deptid = 30;

COMMIT;

drop table department;