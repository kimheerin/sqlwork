select * from cafe;
select * from drink2;

--���̺� ����
create table drink2 as
select * from drink;

--��⺹��(insert into select) : values ��� �� ��
insert into drink2
(select * from drink2);

--ROWNUM(sudo cloum () = ������ ������ Į��)
select rownum, drink_code, drink_name
from drink2
where rownum >= 1 and rownum <= 10;

--from�� �������� ��� - �ζ��κ�
--�� rn�� ����ϴ°�? ROWNUM�� 1�� �־�� �˻��ǹǷ� rn�̶�� ����(��Ī) ���
select *
from (select rownum rn, drink_code, drink_name from drink2)
--where rownum >= 1 and rownum >= 20;      --rownum ��� �˻� �� ��
where rn >= 1 and rn <= 20;                --��Ī(����) ��� �˻���