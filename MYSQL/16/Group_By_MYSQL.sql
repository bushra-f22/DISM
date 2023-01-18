create database mydb_group;
use mydb_group;
-- ---------------------------------
create table student(
std_id int primary key auto_increment,
std_name varchar(50),
std_marks int 
);
-- show 
select * from student;
insert into student (std_name,std_marks) values("Asad",34);
insert into student (std_name,std_marks) values("Ather",31);
insert into student (std_name,std_marks) values("Majid",12);
insert into student (std_name,std_marks) values("Sara",45);
insert into student (std_name,std_marks) values("Ahmed",38);
insert into student (std_name,std_marks) values("Asad",50);
-- group by with where

Select std_id,std_name,sum(std_marks) from student where std_name like 'A%'group by std_id;

Select count(std_id),std_name from student group by std_name;

Select std_id,std_name,min(std_marks) from student group by std_id;
Select std_id,std_name,min(std_marks) from student where std_marks < 20 group by std_id;
Select std_id,std_name,max(std_marks) from student where std_marks >40 group by std_id;
Select std_id,std_name,avg(std_marks) from student where std_marks > 35 group by std_id;
select sum(std_marks) from student;
select count(std_id) from student;
select min(std_marks) from student;
select std_id,std_name,max(std_marks) from student;
select std_id,std_name,avg(std_marks) from student;
