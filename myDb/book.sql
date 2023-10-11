--bookmall 구축
--book 테이블 생성
CREATE TABLE book (
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(60) NOT NULL,
    publisher   VARCHAR2(60) NOT NULL,
    price       NUMBER NOT NULL
);

--도서 자료 추가
INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '축구하는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대현미디어', 22000);
INSERT INTO book VALUES (4, '골프 바이블', '굿스포츠', 35000);
INSERT INTO book VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실체', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '대한미디어', 13000);
INSERT INTO book VALUES (9, '올림픽 이야기', '심성당', 7500);
INSERT INTO book VALUES (10, 'Olympic champion', 'Person', 13000);

SELECT * FROM book;

--모든 도서의 이름 및 가격만 출력
SELECT bookname, price FROM book;

--도서 테이블에 있는 모든 출판사 출력(중복 제거)
--DISTINCT는 중복이 없는 유일한 데이터를 출력
SELECT publisher FROM book;

--가격이 20000원 미만인 도서 출력(오름차순)
SELECT * FROM book
WHERE price < 20000
ORDER BY price DESC;

--가격 10000원 이상 20000원 이하인 도서 출력
--BETWEEN A AND B
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000; --price >= 10000 AND price <= 20000;도 가능

--'축구의 역사' 출판사 검색
SELECT publisher FROM book
WHERE bookname LIKE '축구의 역사';   --LIKE 대신 =도 가능

--도서명에 '축구'가 포함(%%)된 출판사 검색
SELECT publisher FROM book
WHERE bookname LIKE '%축구%';

--축구 관련 도서 중 가격이 20000원 이상인 도서를 출력
SELECT * FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;

--정렬
--도서명을 오름차순으로 정렬
SELECT * FROM book
ORDER BY bookname;

--도서를 가격순으로 출력(오름차순)
--가격이 같을 때, 이름을 내림차순으로 정렬
SELECT * FROM book
ORDER BY price ASC, bookname DESC;

COMMIT;
