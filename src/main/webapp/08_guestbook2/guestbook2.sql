create table guestbook2(
    idx number not null primary key,
    name varchar2(50),
    subject varchar2(50),
    content varchar2(4000),
    email varchar2(50),
    pwd varchar2(50), 
    f_name varchar2(50),
    regdate date
  );
  
  create sequence guestbook2_seq
  increment by 1
  start with 1
  maxvalue 999999999
  nocycle ;
    
  commit;