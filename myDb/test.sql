-- 실 습 문 제 --

--1. 모든 고객의 이름과 주소를 입력
SELECT customer.name, customer.address
FROM customer;

--2. 모든 고객의 이름, 주소, 전화번호 검색
SELECT customer.name, customer.address, customer.phone
FROM customer;

--3. 주소가 '영국'인 고객 검색
SELECT customer.custid, customer.name, customer.address, customer.phone
FROM customer
WHERE customer.address LIKE '%영국%';

--4. 고객명이 '기면아' 혹은 '안산'인 고객 검색
SELECT customer.custid, customer.name, customer.address, customer.phone
FROM customer
WHERE customer.name IN('기면아', '안산');

--5. 주소가 '대한민국'이 아닌 고객 검색
SELECT * FROM customer
WHERE address NOT LIKE '%대한민국%';

--6. 전화번호가 없는 고객 검색
SELECT * FROM customer
WHERE phone IS NULL;

--7. 고객명 이름순 정렬
SELECT * FROM customer
ORDER BY name; 

--8. 고객의 총 인원수
SELECT COUNT(*) AS 총고객수
FROM customer;
