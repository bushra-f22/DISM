create database db_school;
use db_school;

create table student (roll_no int primary key,sname varchar(50),ssubject varchar(50),batchcode varchar(50));
insert into student (roll_no,sname,ssubject,batchcode) values (1,"Atif","Mysql","2203b3");
insert into student (roll_no,sname,ssubject,batchcode) values (2,"Mustafa","Php","2203b3");
insert into student (roll_no,sname,ssubject,batchcode) values (3,"Atif","Php","2203b3");
insert into student values (4,"Sana","Sql","1909c1");
insert into student (sname,batchcode,ssubject,roll_no) values ("Marium","BCIT","Machine learning",5);
select * from student;