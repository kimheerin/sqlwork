-- 제2정규화(음료, 주문테이블)
create table drink(
	drink_code	varchar(3) primary key,		-- 음료코드
	drink_name	varchar(20) not null		-- 음료이름
);

create table cafe_order(
	order_no	int primary key auto_increment,		-- 주문번호
    drink_code	varchar(3) not null,				-- 음료코드
    order_cnt	int not null,						-- 주문수량
    foreign key(drink_code) references drink(drink_code)
    on delete cascade -- 부모키의 데이터가 삭제되면 자식 데아토도 삭제됨
);

-- drink 자료 추가
insert into drink values('A01', '아메리카노');
insert into drink values('B01', '카페라떼');
insert into drink values('C01', '허브차');

-- cafe_order 자료 추가
insert into cafe_order(drink_code, order_cnt)
values ('A01', 3);
insert into cafe_order(drink_code, order_cnt)
values ('B01', 1);
insert into cafe_order(drink_code, order_cnt)
values ('C01', 2);

-- 음료 테이블의 음료코드 'B01' 삭제 
-- 주문 테이블의 'B01' 삭제
delete from drink where drink_code = 'B01';

-- 주문 테이블에 음료명을 포함하여 출력 join
-- 동등조인 equal join - equl ('=') 사용
select  a.*,
		b.drink_name
from cafe_order a, drink b
where a.drink_code = b.drink_code;

-- 주문 테이블에 음료명을 포함하여 출력 join
-- 내부조인 inner join - on
select  a.*,
		b.drink_name
from cafe_order a join drink b
on   a.drink_code = b.drink_code;

-- 주문 관계없이 주문정보의 음료 정보를 모두 출력
-- 외부조인 left, right join ~ on
select  a.drink_code,
		a.drink_name,
        b.order_no,
        b.order_cnt
from drink a left join cafe_order b
on   a.drink_code = b.drink_code;

-- 주문이 없는 상품 검색
select a.drink_name "주문이 없는 상품"
from drink a left join cafe_order b
on   a.drink_code = b.drink_code
where b.order_no is null;


select * from drink;
select * from cafe_order;
