select * from cafe;
select * from drink2;

--테이블 복사
create table drink2 as
select * from drink;

--재기복사(insert into select) : values 사용 안 함
insert into drink2
(select * from drink2);

--ROWNUM(sudo cloum () = 제공된 관리자 칼럼)
select rownum, drink_code, drink_name
from drink2
where rownum >= 1 and rownum <= 10;

--from절 서브쿼리 사용 - 인라인뷰
--왜 rn을 사용하는가? ROWNUM은 1이 있어야 검색되므로 rn이라는 변수(별칭) 사용
select *
from (select rownum rn, drink_code, drink_name from drink2)
--where rownum >= 1 and rownum >= 20;      --rownum 사용 검색 안 됨
where rn >= 1 and rn <= 20;                --별칭(변수) 사용 검색됨