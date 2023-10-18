--조인 연습
--product, product_review
SELECT * FROM product;
select * from product_review;

--리뷰가 있는 상품 정보 검색
--리뷰 테이블에 product_review 칼럼을 조인
select b.review_no,
       b.product_code,
       a.product_name,
       b.content
from product a, product_review b
where a.product_code = b.product_code;
--b 전체 조회
select a.product_name,
       b.*                       
from product a, product_review b
where a.product_code = b.product_code;


--ANSI(미국협회) 조인 - STANDARD JOIN(표준 조인)
--내부 조인(INNER JOIN - ON)
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a join product_review b
ON a.product_code = b.product_code;

--외부조인(LEFT, RIGHT 조인)
--리뷰 유무와 관계없이 검색
select a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate      
from product a left join product_review b
on a.product_code = b.product_code;

--???
select a. product_name "상품 후기가 없는 상품"
from product a left join product_review b
on a. product_code = b. product_code
where b.content is null;

--상품 리뷰 테이블에 product_name 칼럼 추가
--스칼리 서브쿼리 : 한 칼럼만 반환함, SELECT절에서 사용
select  a.review_no,
        a.product_code,
        (select b.product_name
        from product b
        where a.product_code = b.product_code)
        product_name,
        a.content,
        a.member_id
from product_review a;