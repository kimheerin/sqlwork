--ROWNUM(�ο��ȣ, ���ȣ)
--�� ���� �����ϰ� ���� �� ����� (SUDO COLUME)

CREATE TABLE ex_score(
    name    VARCHAR2(10),
    score   NUMBER(3)
);
INSERT INTO ex_score VALUES ('���ϳ�', 94);
INSERT INTO ex_score VALUES ('���', 94);

INSERT INTO ex_score VALUES ('���', 100);
INSERT INTO ex_score VALUES ('���', 97);
INSERT INTO ex_score VALUES ('��ټ�', 87);
INSERT INTO ex_score VALUES ('�迩��', 87);
INSERT INTO ex_score VALUES ('���ϰ�', 91);
INSERT INTO ex_score VALUES ('�迩��', 77);
INSERT INTO ex_score VALUES ('���ȩ', 80);
INSERT INTO ex_score VALUES ('�迭', 95);

--5������� ���� ���
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM <= 5;

--1~6���� ��������
--ROWNUM�� 1���� ������
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM >= 1 AND ROWNUM <= 6;

--1~5���� ��������
--BETWEEN
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM BETWEEN 1 AND 5;

--��� ������ ��������(���� ���� ��)���� ���
SELECT ROWNUM, name, score
FROM ex_score
ORDER BY score DESC;

--������ ���� ������ 5�� ���(��� ����)
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM <=5
ORDER BY score DESC;

--������ ������������ ���� �� 5���� ���
SELECT ROWNUM, name, score
FROM (
    SELECT ROWNUM, name, score
    FROM ex_score
    ORDER BY score DESC) 
WHERE ROWNUM <=5;

--���� ����
SELECT  name,
        score,
        RANK() OVER(ORDER BY score DESC) ����1,
        DENSE_RANK() OVER(ORDER BY score DESC) ����2
FROM ex_score;



