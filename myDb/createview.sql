--��(VIEW) ����
--�ּҿ� '����'�� ���Ե� ����� ������ �� ����
CREATE VIEW vw_customer
AS SELECT * FROM customer
WHERE address like '���ѹα�%';

SELECT * FROM vw_customer;

--VIEW ����
DROP VIEW vw_customer;

--�̸� '����' -> ���������� ����
UPDATE vw_customer
 SET name = '������'
 WHERE name = '����';
 
--�� ID�� 3�� �� ����
--�����ϰ� �ִ� order ���̺��� �����Ͽ� ���� �Ұ�
DELETE FROM vw_customer
WHERE custid = 3;
