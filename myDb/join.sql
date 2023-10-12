--조인 : 두 테이블을 연결하는 기능
--동등조인 : 조인 조건이 정확히 일치하는 경우에 결과 출력
--외부조인 : 조인 조건이 정확히 일치하지 않아도 모든 결과를 출력

--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색
--고객이름으로 정렬(자동 그룹화)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--주문하지 않은 데이터도 모두 검색
--조건이 일치하지 않은 테이블에 +를 넣어 줌
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색
--'박지성'의 구매내역 출력
--주문액 총합
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색하시오 
--주문 금액의 총액을 출력(group by 결과)
--'김연아'의 총 주문 금액 출력(having 으로 제한을 둠)
select sum(ord.saleprice)
from customer cus, orders ord
where cus.custid = ord.custid
group by cus.name
 having cus.name = '기면아'
order by cus.name;

--고객의 이름, 주문한 도서 이름, 주문일, 주문금액
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid   --기본키 = 외래키
    AND bk.bookid = ord.bookid;
    
--표준 조인 ANCI SQL
--내부 조인 INNER JOIN
--고객(customer)과 고객의 주문(order)에 관한 데이터 중 고객명과 주문 도서 금액 검색
SELECT cus.name, ord.saleprice
FROM customer cus INNER join orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;

--외부 조인(OUTER JOIN)
--JOIN 조건에 충족하지 않는 데이터여도 출력하는 기법
--고객(customer)과 고객의 주문(order)에 관한 데이터 중 주문되지 않은 데이터를 포함하여
--고객명과 주문 도서 금액 출력
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;


