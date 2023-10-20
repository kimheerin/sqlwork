--서브 쿼리(sub Query) : 부속질의 (중첩 커리)
--select 내부에 또 SELECT 검색 가능

--최고가 도서 출력
--MAX(price)
SELECT MAX(price) FROM BOOK;

--최고가 도서의 이름 출력
SELECT bookname
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--도서를 구매한 적이 있는 고객의 이름 검색
SELECT custid FROM orders;

--다중형 서브쿼리
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--조인 방식 : customer, orders
--도서를 구매한 적이 있는 고객의 이름 검색
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
--FROM customer cus INNER JOIN orders ord
--ON cus.custid = ord.custid
--ORDER BY cus.name;

--FROM절에 있는 서브관리 - 인라인뷰라고도 함
--고객 번호가 2 이하인 고객의 이름 및 판매액 검색
--단, 고객 번호가 2 이하

--동등 조인
SELECT cs.name, SUM(od.saleprice)
FROM customer cs, orders od
WHERE cs.custid = od.custid
      AND cs.custid <= 2
GROUP BY cs.name;

--서브 쿼리
SELECT cs.name, SUM(od.saleprice)
FROM (SELECT * FROM customer
      WHERE custid <= 2) cs,
     orders od
WHERE cs.custid = od.custid
  AND cs.custid <= 2
GROUP BY cs.name;

--내가 한 거...
SELECT cus.name 고객명, ord.saleprice 판매액, cus.custid 고객번호
FROM customer cus, orders ord
WHERE cus.custid <= 2;

SELECT * FROM product;
SELECT * FROM product_review;

--스칼리 서브쿼리 : select절에 있는 select문을 말함
--상품 리뷰 테이블에 없는 상품명 검색
SELECT  a.product_code,
        a.member_id,
        a.content,
        (SELECT b.product_name
        FROM product b
        WHERE a.product_code = b.product_code)product_name,
        a.member_id,
        a.content
FROM product_review a;


-- 실행 순서
/* 1. FROM절 테이블명
2. WHERE, GROUP BY
3. SELECT 절
4. ORDER 절
*/

