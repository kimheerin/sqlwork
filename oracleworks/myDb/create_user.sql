--user 계정 : test, 비번 pwtest
CREATE USER c##test IDENTIFIED BY pwtest;

--SESSION 권한 로그인 부여
GRANT CREATE SESSION TO c##test;

--DB의 테이블 생성 권한 부여
GRANT CREATE TABLE, RESOURCE TO c##test;

--데이터 조작할 모든 권한 부여 - DML(삽입, 조회, 수정, 삭제)
GRANT CONNECT, DBA TO c##test;