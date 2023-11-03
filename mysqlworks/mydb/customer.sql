-- customer 테이블

CREATE TABLE customer(
    custid      int PRIMARY KEY,
    name        VARCHAR(40) NOT NULL,
    address     VARCHAR(50) ,
    phone       VARCHAR(20)
);
INSERT INTO customer(custid,name,address,phone)
VALUES(1,'박지성','맨체스터 유나이티드','000-5000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(2,'김연아','서울 강서구 ','010-6000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(3,'안산','경기도 안산','000-7000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(4,'류현진','미국 토론토', '');
INSERT INTO customer(custid,name,address,phone)
VALUES(5,'손흥민','토트넘 유나이티드','000-8000-0001');
select * from customer;