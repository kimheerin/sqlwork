-- mydb 생성

use mydb;

create database mydb;

create table test(
	no	int,
    msg varchar(100)
);

insert into test values (1, '좋하');
insert into test values (2, '행운을 빈다');

select * from test;
commit;
