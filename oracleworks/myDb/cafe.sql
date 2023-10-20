--테이블 생성 ,자료 삽입
CREATE TABLE drink(
   drink_code VARCHAR2(3)   PRIMARY KEY,
   drink_name VARCHAR2(30)  NOT NULL
);

INSERT INTO drink VALUES('A01' ,'아메리카노');
INSERT INTO drink VALUES('B01' ,'카페라떼');
INSERT INTO drink VALUES('C01' ,'자몽');



CREATE TABLE cafe_order(
    order_no   VARCHAR2(10)  PRIMARY KEY,
    drink_code      VARCHAR2(3)   NOT NULL,
    order_cnt  NUMBER        NOT NULL,
    FOREIGN KEY(drink_code) REFERENCES drink(drink_code)
);

INSERT INTO cafe_order VALUES('2023100101','A01','3');
INSERT INTO cafe_order VALUES('2023100102','B01','1');
INSERT INTO cafe_order VALUES('2023100103','A01','2');

COMMIT;

SELECT * FROM cafe_order;
SELECT * FROM drink;

drop table cafe_order;
drop table drink;


--동등조인
SELECT b.order_no,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a , cafe_order b
WHERE a.drink_code = b.drink_code;

--내부조인
SELECT b.order_no,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a join cafe_order b
      ON a.drink_code  = b.drink_code;
      
--외부조인
SELECT b.order_no,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a join cafe_order b
      ON a.drink_code  = b.drink_code;
      


--join ~using
SELECT b.order_no,
       drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a join cafe_order b
  USING(drink_code); 

--주문이 없는 음료를 포함하여 모든 정보를 검색
SELECT a.drink_name,
       a.drink_code,
       b.order_no,
       b.order_cnt
FROM drink a left join cafe_order b
      ON a.drink_code  = b.drink_code;
      
