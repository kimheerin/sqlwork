--product 테이블 생성
CREATE TABLE product (
    product_code CHAR(6) PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price        NUMBER NOT NULL
);

INSERT INTO product(product_code, product_name, price)
VALUES ('100001','무소음 무선 마우스',25000);
INSERT INTO product(product_code,product_name,price)
VALUES ('100002','기계식 게이밍 키보드',30000);
INSERT INTO product(product_code,product_name,price)
VALUES ('100003','무결점 패널 광시야각 모니터',120000);

COMMIT;
SELECT * FROM product;

--상품 중에서 마우스 검색하기
SELECT product_name, price
FROM  product
WHERE product_name LIKE '%마우스%';

--상품을 가격순으로 정렬 하시오 DESC
SELECT *
FROM product
ORDER BY price DESC;

--상품을 가격순으로 정렬 하시오 DESC
SELECT *
FROM product
ORDER BY price DESC;

-- 다중형 서브쿼리
-- 도서를 구매한 적이 없는 고객의 이름 출력
select name 
from customer
where custid not in (select custid from orders);
