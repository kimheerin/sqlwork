--학교 데이터베이스 구축
--학과 테이블 생성
CREATE TABLE major (
    mname  VARCHAR2(20) PRIMARY KEY,
    mphone VARCHAR2(20) NOT NULL,   --필수 입력
    location VARCHAR2(20) NOT NULL
);

--학과 추가
INSERT INTO major(mname, mphone, location)
VALUES ('소프트웨어학과', '02-1234-5678', 'B동 3층');
INSERT INTO major(mname, mphone, location)
VALUES ('화학공학과', '02-2222-3333', 'B동 4층');
INSERT INTO major(mname, mphone, location)
VALUES ('전기전자공학과', '02-4444-5555', 'B동 5층');

--학과명 자료의 크기 변경
ALTER TABLE major MODIFY mname VARCHAR2(30);

--전체 데이터 조회
SELECT * FROM major;

--학과명과 전화번호만 출력(별칭 as)
SELECT mname as 학과명, mphone as 전화번호 FROM major;

COMMIT;