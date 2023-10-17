--���� �б� ���̕�
CREATE TABLE summer_class(
        sid NUMBER,
        subject VARCHAR2(20),
        price NUMBER
);

INSERT INTO summer_class VALUES ( 100, 'C', 30000);
INSERT INTO summer_class VALUES ( 101, 'Java', 45000);
INSERT INTO summer_class VALUES ( 200, 'Python', 40000);
INSERT INTO summer_class VALUES ( 201, 'Java', 45000);

COMMIT;

--�����б⸦ �����ϴ� �л��� �й��� �����ϴ� ���� 
SELECT sid, subject
FROM summer_class;

--python ������ ������ 
SELECT price
FROM summer_class
WHERE subject = 'Python';

--�����б⿡ ��� �л��� �� ������ �Ѿ� 
SELECT COUNT(sid) �л���,
        SUM(price) �������Ѿ�
FROM summer_class;

--200�� �л� ���� ���(����)
DELETE FROM summer_class
WHERE sid = 200;

--(�� 200���� �����Ͽ�)���� �̻� -> ����ȭ �ʿ�
--python ������ ������ �˻�
SELECT price
FROM summer_class
WHERE subject = 'Python';

--C++ ���� ����
INSERT INTO summer_class VALUES(NULL, 'C++', 35000);

--�л� 3��, Ʃ���� 4��
SELECT COUNT(*)�����ο�
FROM summer_class;

SELECT COUNT(sid) �����ο�
FROM summer_class;

--���� �̻�
--java ������ 45000 -> 40000 ����(�� �� �����)
UPDATE summer_class
    SET price = 40000
    WHERE subject = 'Java';
--���� UPDATE���� ����ó�� �̻� ���� �߻��ϸ�
--1�Ǹ� ����
UPDATE summer_class
SET price = 40000
WHERE subject = 'Java'
    AND sid = 101;
    
--Java ������
SELECT price, subject
FROM summer_class
WHERE subject = 'Java';

ROLLBACK;
SELECT * FROM summer_class;
