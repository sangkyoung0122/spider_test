drop table spider_member

create table spider_member(
   id varchar2(100) primary key,
   password varchar2(100) not null,
   name varchar2(100) not null,
   address varchar2(100) not null
)

insert into spider_member(id,password,name,address) values('java','1234','조선화','이천');
insert into spider_member(id,password,name,address) values('spider','1234','김영호','판교');
insert into spider_member(id,password,name,address) values('spring','1234','김지은','양재');

select * from spider_member;

   select b.no, b.title, b.hits, b.time_posted, m.name
   from spider_board b, SPIDER_MEMBER m, where b.id=m.id;

create table spider_board(
   no number primary key,
   title varchar2(50) not null,
    content clob not null,
   hits number default 0,
   time_posted date not null,
   id varchar2(100) not null,
   constraint spider_board foreign key(id) references spider_member(id)
)

create sequence spider_board_seq;

insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'ㅋㅋ','ㅋㅋ',sysdate,'java');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'안녕','안녕하세요',sysdate,'spring');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'방가','방가워요',sysdate,'spider');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'선릉','스터디룸',sysdate,'java');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'스터디','3시간',sysdate,'spring');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'코스타','판교',sysdate,'spider');
insert into spider_board(no,title,content,time_posted,id) 
values(spider_board_seq.nextval,'밭아쓰기','거미조',sysdate,'spider');

-- 페이징 sql 
SELECT b.no,b.title,b.time_posted,b.hits,b.id,m.name FROM(
   SELECT row_number() over(order by no desc) as rnum,no,title,hits,
   to_char(time_posted,'YYYY.MM.DD') as time_posted,id FROM spider_board) b,
   spider_member m where b.id=m.id and rnum between 1 and 5 
order by no desc;

select count(*) from SPIDER_BOARD

-- 개별 게시물 조회
select b.no,b.title,to_char(b.time_posted,'YYYY.MM.DD HH24:MI:SS') as
time_posted,b.content,b.hits,m.id,m.name from spider_board b,spider_member m
where    b.id=m.id and no=3


INSERT INTO spider_board(no, title, content, time_posted, id) SELECT spider_board_seq.nextval, title, content, time_posted, id FROM spider_board