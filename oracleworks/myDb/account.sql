-- account ���̺� ����
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOt NUlL,
    balance  NUMBER NOT NULL

);

INSERT INTO account VALUES('11-11-111','����',100000);

--�ڷ� ����(��,���)
UPDATE account
SET balance = 50000,
    owner = '�񸰱�'
    WHERE ano = '22-22-222';

ROLLBACK;
COMMIT;

SELECT * FROM account;

DELETE FROM account
WHERE ano = '22-22-222';