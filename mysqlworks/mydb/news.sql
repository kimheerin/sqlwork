
use mydb;

-- news 테이블 생성
create table news(
	aid			int primary key auto_increment,
    title		varchar(100) not null,
    content		text not null,
    create_date	timestamp default now(),
    img			varchar(40)		
);

insert into news(title, content, img) values('경제 뉴스', '뉴스 내용입니다.', 'car.jpg');
insert into news(title, content, img) values('정치 뉴스', '이스라엘 vs 팔레스타인', 'war.jpg');
insert into news(title, content, img) values('스포츠 뉴스', '한국 vs 베트남', 'soccer.jpg');
insert into news(title, content, img) values('과학 뉴스', '한국, 초전도체 개발 성공', 'seience.jpg');

 
select * from news Order by create_date DESC;

-- 등록 시간 순으로 정렬(최근 등록일이 위로)
select *
from news
order by create_date desc;

-- 뉴스 내용 중 이스라엘이 포함된 뉴스 검색
select *
from news
where content like '이스라엘%';

-- 뉴스 기사의 총 개수 출력
select count(*) 총개수
from news;

drop table news;

commit;
