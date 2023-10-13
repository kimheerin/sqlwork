--��¥ �� �ð� �Լ�
--���� ��¥ ���
SELECT SYSDATE FROM dual;

--���� ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'YYYY') �⵵,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD') ��¥
FROM dual; 

--���� ��¥�� �ð�
SELECT SYSTIMESTAMP FROM dual;

--�ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�����,
       TO_CHAR(SYSTIMESTAMP, 'YYYY/MM/DD HH:MI:SS ') ��¥�׽ð�
FROM dual;

--���� ���ϰ� ����
--���� ��¥���� 10�� ��, �� ��¥ ���
SELECT SYSDATE-10 FROM dual;
SELECT SYSDATE+10 FROM dual;

--Ư�� ��¥���� 10�� ��, �� ��¥ ���
--TO_DATE(���ڿ���¥)
SELECT TO_DATE('2023-09-01') + 10 FROM dual;
SELECT TO_DATE('2023-09-01') - 10 FROM dual;

--���� ���ϰ� ����
--ADD_MONTHS(��¥, �� ������)
SELECT ADD_MONTHS(SYSDATE, 3), ��� FROM dual; --�� ���ϱ�
SELECT ADD_MONTHS(SYSDATE, -3) ��� FROM dual; --�� ����
SELECT ADD_MONTHS(TO_DATE('2023/5/1'), -3) ��� FROM dual;

--������ ���
--MONTHS_BETWEEN(������, ������)
--�Ѱ����� �ݿø� : ROUND() ���
SELECT 
      ROUND(MONTHS_BETWEEN(TO_DATE('2023/12/31'),
            SYSDATE), 0) �Ѱ�����
FROM dual;

--orders ���̺��� ��¥ �ð��Լ� ����ϱ�
--������ �ֹ��Ϸκ��� 10�� �Ŀ� ���� Ȯ��
--�� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TO_DATE(orderdate) + 10 �ֹ���
FROM orders;

--�ֹ��Ͽ� 3���� ���ϰ� ����
--���� : �ֹ���ȣ 6~10���� ���
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���ϱ���,
       ADD_MONTHS(orderdate, -3) ������
FROM orders
--WHERE orderid >= 6 AND orderid <= 10; --���1
WHERE orderid BETWEEN 6 AND 10;         --���2

--10�� ������ �ֹ��Ϻ��� ������� �� ������ ���ϱ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE(orderdate)), 0) �Ѱ�����
       --ROUND(MONTHS_BETWEEN(SYSDATE, TO_DATE(orderdate)), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

--��ȯ �Լ� : TO_NUMBER() : ���� -> ���� ��ȯ
SELECT TO_NUMBER('320') FROM dual;


