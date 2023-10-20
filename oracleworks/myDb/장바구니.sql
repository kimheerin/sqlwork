-- 먼저 db를 선택함 alter
use mydb;

create table 장바구니(
	아이템 varchar(20),
    가격 int
);

insert into 장바구니 values('두부', 2000);
insert into 장바구니 values('계란', 6000);
insert into 장바구니 values('콩나물', 8000);

select * from 장바구니;

-- 가격별로 정렬
select *
from 장바구니
where 가격;

-- 아이템의 총 개수, 가격의 평균 구하기
select count(*) 총개수,
	   max(가격) 최고가,
       min(가격) 최저가
from 장바구니
where 가격;

-- 콩나물 가격 검색
select 가격
from 장바구니
where 아이템 = '콩나물';
