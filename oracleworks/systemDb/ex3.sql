-- ex3 ���̺� ����
CREATE TABLE ex3(
    col_null VARCHAR2(10),              --null ���
    col_not_null VARCHAR2(10) NOT NULL  --null ����
);

INSERT INTO ex3 VALUES ('', 'hello');   --(null ���, null ����)
INSERT INTO ex3 VALUES ('�ȳ�', '');

COMMIT;

SELECT * FROM ex3;
