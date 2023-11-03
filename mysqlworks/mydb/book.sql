-- bookmall 구축
-- book 테이블
create table book(
   bookid       int primary key,
    bookname   varchar(60) not null,
    publisher   varchar(60) not null,
    price       int not null
);
INSERT INTO book VALUES (1, '코스모스' , '우주를 보다', 60000);
INSERT INTO book VALUES (2, '총 균 쇠' , '역사사', 65000);
INSERT INTO book VALUES (3, '해리포터' , '은호미디어', 90000);
INSERT INTO book VALUES (4, '누가 내머리위에 똥 쌌어?!' , '함평출판', 20000);
INSERT INTO book VALUES (5, '연탄길 ' , '길을보다', 60000);
INSERT INTO book VALUES (6, '토지' , '박경림', 100000);
INSERT INTO book VALUES (7, '무인도에서 살아남기' , '굿스포츠', 5000);
INSERT INTO book VALUES (8, '해리포터 불의잔' , '은호미디어', 90000);
INSERT INTO book VALUES (9, '어린왕자' , '생택쥐베리', 27000);
INSERT INTO book VALUES (10, '빨간마스크 ' , '마스크를 보다', 32340);

select * from book;