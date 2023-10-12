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

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--조인 방식 : customer, orders
--도서를 구매한 적이 잇는 고객의 이름 검색
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
--FROM customer cus INNER JOIN orders ord
--ON cus.custid = ord.custid
--ORDER BY cus.name;