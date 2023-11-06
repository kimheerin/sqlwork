-- 테이블 생성(resource 확보됨)
create table test(
    msg varchar2(30)
);

-- deb 권한 부여 확인
insert into test values ('좋은 하루 보내세요');

select * from test;