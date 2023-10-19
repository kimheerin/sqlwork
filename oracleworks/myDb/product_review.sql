--product_review ���̺� ����
CREATE TABLE product_review(            
        review_no    NUMBER PRIMARY KEY,                           --�����ȣ
        product_code CHAR(6) NOT NULL,                             --��ǰ�ڵ�
        member_id    VARCHAR2(20) NOT NULL,                        --ȸ�����̵�
        content      CLOB NOT NULL,                                --���䳻��
        regdate      DATE DEFAULT SYSDATE,                         --�ۼ���
        FOREIGN KEY(product_code) REFERENCES product(product_code) --�ܷ�Ű
);

--�ڵ� ����(nocash - �ʱ�ȭ�ϸ� 1���� ����)
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100001', 'today12', '�������ε� ���� ����', SYSDATE);
INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100001', 'cloud112', '�����̶� ����', SYSDATE);
INSERT INTO product_review(review_no, product_code, member_id, content, regdate)
VALUES (seq_rno.NEXTVAL, '100002', 'sky123', '������', SYSDATE);


COMMIT;
SELECT * FROM product_review;

--���̺��� �����ϰ� �����͸� ��ü ����
TRUNCATE TABLE product_review;

--������ ����
DROP SEQUENCE seq_rno;

--��ǰ�ڵ� '100001', ȸ��ID 'cloud112'�� ���� ���
SELECT *
FROM product_review
WHERE product_code = '100001' AND member_id = 'cloud112';

--��ǰ ������ 3��, ���� �ִ� ������ 2��
--���䰡 �ִ� ��ǰ �˻�(���� ����)
--������ġ : a���̺��� �⺻Ű - b���̺��� ����Ű
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code;

--ǥ�� ��� : ���� ����(INNER JOIN)
SELECT *
FROM product a JOIN product b
    ON a.product_code = b.product_code;
    
--���� ���� ������� ��ǰ�� ������ �˻�
--�������� ���(product�� ��ǰ�� ��� ��µǸ�, ����� ���� �������
--���䰡 ������ NULL�� ���
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code(+);

--ǥ�ع�� : �ܺ� ����(OUTER JOIN)
SELECT *
FROM product a LEFT OUTER JOIN product_review b
     ON a.product_code = b.product_code;
     
--ǥ�ع�� : �ܺ� ����(OUTER JOIN) outer ���� ����
SELECT  b.product_code,
        b.product_name,
        b.price,
        a.member_id,
        a.content,
        a.regdate
FROM product_review a RIGHT JOIN product b
 ON a.product_code = b.product_code;
