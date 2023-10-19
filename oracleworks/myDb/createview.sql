--뷰(VIEW) 생성
--주소에 '서울'이 포함된 고객들로 구성된 뷰 생성
CREATE VIEW vw_customer
AS SELECT * FROM customer
WHERE address like '대한민국%';

SELECT * FROM vw_customer;

--VIEW 삭제
DROP VIEW vw_customer;

--이름 '기면아' -> 장유빈으로 변경
UPDATE vw_customer
 SET name = '장유빈'
 WHERE name = '기면아';
 
--고객 ID가 3인 고객 삭제
--참조하고 있는 order 테이블이 존재하여 삭제 불가
DELETE FROM vw_customer
WHERE custid = 3;

--고객과 관련 주문 정보 검색
SELECT cs.name, bk.bookname, od.saleprice
FROM book bk, customer cs, orders od
WHERE bk.bookid = od.bookid
  AND cs.custid = od.custid;
  
SELECT * FROM vw_book_orders;

SELECT COUNT(*)
FROM vw_book_orders;
