create table zstudent
(
s_id number primary key,
s_name varchar2(20),
s_birthday date,
s_address varchar2(50),
s_phone varchar2(20)
);
select table_name,constraint_name,constraint_type,status from user_constraints where table_name='zstudent';
select constraint_name,table_name,column_name from user_cons_columns where constraint_name='PK_STUDENT';
alter table zstudent drop primary key;
alter table zstudent modify(s_id number primary key);
select * from zstudent;
alter table zstudent add constraint pk_student primary key(s_id,s_name,s_birthday,s_address);
select table_name,constraint_name from user_constraints where table_name='zstudent';
