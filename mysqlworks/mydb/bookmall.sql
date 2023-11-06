-- bookmall

select * from book;

-- 도서를 이름순으로 정렬
select * from book
order by bookname;

-- 도서를 가격이 높은순으로 정렬
select * from book
order by price desc;

-- 도서 이름에 '해리포터'가 포함된 출판사 검색
select * from book
where bookname like '%해리포터';

-- 도서 이름에 '해리포터'가 포함되며 가격이 10,000원 이상인 도서 검색
select * from book
where bookname like '%해리포터' and price >= 10000;

-- 도서 테이블에 있는 중복된 이름을 제외한 모든 출판사 검색
select distinct publisher from book;

-- 가격 10,000원 이상 20,000원 이하인 도서 검색
select * from book
where price >= 10000 and price <= 20000;

select * from book
where price between 10000 and 20000;

-- 가격이 13,000원이 아닌 도서 검색
select * from book
where price != 13000;

-- 고객을 이름순으로 정렬(오름차순)
select * from customer
order by name asc;

-- 전화번호가 없는 고객 검색
select * from customer
where phone = '';

-- 주소가 '서울'인 고객을 검색
select * from customer
where address like '%서울%';

-- 주소가 '서울'이 아닌 고객을 검색
select * from customer
where address not like '%서울%';

-- 고객의 총 인원 검색
select count(*) 총인원
from customer;

-- 도서 가격이 가장 높은 도서 검색
-- 서브쿼리를 메인 쿼리에 접속
select *
from book
where price = (select max(price) from book);

-- 주문 테이블에서 총 판매액 검색
select
	sum(saleprice) 총판매액,
	round(avg(saleprice), 0) 총평균액
from orders;

-- 고객별(custid)로 주문한 도서의 총 판매액 계산
-- 출력 : 고객아이디, 총판매액
select
	custid,
    sum(saleprice) 총판매액
from orders
group by custid;