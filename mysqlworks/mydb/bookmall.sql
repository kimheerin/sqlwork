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