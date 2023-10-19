--���� ����
--product, product_review
SELECT * FROM product;
select * from product_review;

--���䰡 �ִ� ��ǰ ���� �˻�
--���� ���̺� product_review Į���� ����
select b.review_no,
       b.product_code,
       a.product_name,
       b.content
from product a, product_review b
where a.product_code = b.product_code;
--b ��ü ��ȸ
select a.product_name,
       b.*                       
from product a, product_review b
where a.product_code = b.product_code;


--ANSI(�̱���ȸ) ���� - STANDARD JOIN(ǥ�� ����)
--���� ����(INNER JOIN - ON)
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a join product_review b
ON a.product_code = b.product_code;

--�ܺ�����(LEFT, RIGHT ����)
--���� ������ ������� �˻�
select a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate      
from product a left join product_review b
on a.product_code = b.product_code;

--???
select a. product_name "��ǰ �ıⰡ ���� ��ǰ"
from product a left join product_review b
on a. product_code = b. product_code
where b.content is null;

--��ǰ ���� ���̺� product_name Į�� �߰�
--��Į�� �������� : �� Į���� ��ȯ��, SELECT������ ���
select  a.review_no,
        a.product_code,
        (select b.product_name
        from product b
        where a.product_code = b.product_code)
        product_name,
        a.content,
        a.member_id
from product_review a;