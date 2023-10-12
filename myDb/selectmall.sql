SELECT * FROM orders;
--주문 테이블의 칼럼, 자료형 검색
DESC orders;

--통계 함수 : 개수(COUNT), 합계(SUM), 평균(AVG), 최대값(MAX), 최소값(MIN)
--COUNT(*) : '*' - 칼럼명
--COUNT(칼럼명) : 
SELECT COUNT(orderid) AS 총판매건수
FROM orders;

SELECT SUM(saleprice) AS 총판매액,
       AVG(saleprice) AS 총평균액
FROM orders;

--고객이 주문한 도서의 총 판매액
SELECT SUM(saleprice) as 총판매액
FROM orders;

--고객별 주문 도서의 총 판매액
--그룹으로 묶을 때 사용 : GROUP BY 컬럼명
SELECT custid,
    COUNT(*) AS 도서수량,
    SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid;

--도서 수량이 3권 이상인 자료 검색
--HAVING절 사용 - GROUP BY절에서 조건이 있을 때 사용
SELECT custid,
    COUNT(*) AS 도서수량,
    SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid
HAVING COUNT(*) >= 3;
    --AND SUM(saleprice) >= 35000;

SELECT COUNT(*) AS 총고객수, COUNT(phone) AS 전화번호수
FROM customer;

--전체 도서 중 최대가 최저가
SELECT MAX(price) 최고가, MIN(price) 최저가
FROM book;

SELECT * FROM customer;

--3번 고객(안산)이 주문한 도서의 총 판매액
SELECT SUM(saleprice) AS 총판매
FROM orders
WHERE custid = 3;

--조인(Join)
--동등조인(EQUI JOIN) : EQUAL(=)을 사용하는 조인
--테이블A.칼럼명 = 테이블B.칼럼명 (칼럼 - 기본키와 외래키)
--주문 고객 이름 및 가격 검색(customer, orders 조인)
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

--별칭 사용 조인
--고객명 별 정렬(오름차순)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name, ord.saleprice DESC;


--3번 고객의 아이디, 도서이름, 주문 가격 검색
SELECT custid, bookname, saleprice
FROM orders, book
WHERE orders.bookid = book.bookid
      AND orders.custid = 3;
