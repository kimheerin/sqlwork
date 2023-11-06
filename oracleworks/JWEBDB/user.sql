-- jweb user 계정(db)

--c##을 붙이지 않는 방법
alter session set "_oracle_script" = true;

-- jweb user 계정(db) 생성
create user jweb identified by pwjweb;

-- 권한 부여, 리소스 공간 확보
grant connect, resource, dba to jweb;