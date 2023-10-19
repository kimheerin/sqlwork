--�Խ��� ���̺� ����
CREATE TABLE boards (
    bno       NUMBER PRIMARY KEY,
    btitle    VARCHAR2(100) NOT NULL,
    bcontent  CLOB NOT NULL,    --CLOB(Character Large Of byte)
    bwriter   VARCHAR2(50) NOT NULL,
    bdate     DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),
    bfiledata BLOB              --BLOB(Binary Large Of byte)
);

--������ ����
CREATE SEQUENCE seq_bno NOCACHE;

--�Խñ� �߰�
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartphone', '������15pro.', 'today');

INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartphone', '������15pro.', 'today',
        SYSDATE, NULL, NULL);

COMMIT;

SELECT * FROM boards
WHERE bwriter = 'choieunho123'
ORDER BY bno DESC;

--�۹�ȣ 5���� ������ '������5����'���� ����
UPDATE boards
SET btitle = '������5����',
    bcontent = '����Ƴ�'
    WHERE bno = 5;
    
SELECT * FROM boards;

--3�� �Խñ� ����
DELETE FROM boards
WHERE bno = 3;
