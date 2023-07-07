create table guestbook(
    idx number not null primary key,
    name varchar2(50),
    subject varchar2(50),
    content varchar2(4000),
    email varchar2(50),
    pwd varchar2(50), 
    regdate date
  );

  create sequence guestbook_seq
  increment by 1
  start with 1
  maxvalue 999999999
  nocycle ;
  
  insert into guestbook values(guestbook_seq.nextval, '홍길동', '첫번째연습','첫번째연습 내용~~~','hong@nave.com','1111',sysdate);
  select * from guestbook;
  commit;