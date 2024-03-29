--product_review 테이블 생성
CREATE TABLE product_review(            
        review_no    NUMBER PRIMARY KEY,                           --리뷰번호
        product_code CHAR(6) NOT NULL,                             --상품코드
        member_id    VARCHAR2(20) NOT NULL,                        --회원아이디
        content      CLOB NOT NULL,                                --리뷰내용
        regdate      DATE DEFAULT SYSDATE,                         --작성일
        FOREIGN KEY(product_code) REFERENCES product(product_code) --외래키
);

--자동 순번(nocash - 초기화하면 1부터 시작)
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100001', 'today12', '무소음인데 소음 있음', SYSDATE);
INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100001', 'cloud112', '무선이라 편함', SYSDATE);
INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100002', 'sky123', '개좋음', SYSDATE);


COMMIT;
SELECT * FROM product_review;

--테이블은 유지하고 데이터를 전체 삭제
TRUNCATE TABLE product_review;

--시퀀스 삭제
DROP SEQUENCE seq_rno;

--상품코드 '100001', 회원ID 'cloud112'인 정보 출력
SELECT *
FROM product_review
WHERE product_code = '100001' AND member_id = 'cloud112';

--상품 아이템 3개, 리뷰 있는 아이템 2개
--리뷰가 있는 상품 검색(동등 조건)
--조건일치 : a테이블의 기본키 - b테이블의 원래키
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code;

--표준 방식 : 내부 조인(INNER JOIN)
SELECT *
FROM product a JOIN product b
    ON a.product_code = b.product_code;
    
--리뷰 유무 관계없이 상품의 정보를 검색
--동등조인 방식(product의 상품은 모두 출력되며, 리뷰는 유무 관계없음
--리뷰가 없으면 NULL로 출력
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code(+);

--표준방식 : 외부 조인(OUTER JOIN)
SELECT *
FROM product a LEFT OUTER JOIN product_review b
     ON a.product_code = b.product_code;
     
--표준방식 : 외부 조인(OUTER JOIN) outer 생략 가능
SELECT  b.product_code,
        b.product_name,
        b.price,
        a.member_id,
        a.content,
        a.regdate
FROM product_review a RIGHT JOIN product b
 ON a.product_code = b.product_code;
