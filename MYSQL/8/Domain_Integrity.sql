create database  my_db;
use my_db;
-- ******************************************************** Null /Not Null 
create table employee (emp_id int primary key,f_name varchar(50) not null, l_name varchar(50) null);
insert into employee (emp_id,f_name,l_name) values(1,"Ali","Khan");
insert into employee (emp_id,f_name) values(4,"Asad");
select * from employee;

-- ********************************* default 
create table student (id int primary key,name varchar(50) null default('Std'),center varchar(50) null default('aptech nn'));
insert into student (id ,name,center) values(1,"Sara","Gulshan");
insert into student (id ,center) values(3,"North Karachi");
insert into student (id) values(4);
select * from student;
-- ********************************* check row value
create table product(pid int primary key,pname varchar(50) null default("newproduct"),p_up int check(p_up >0 and p_up <200));
insert into product (pid,pname,p_up) values(1,"Salt",140);
insert into product (pid,p_up) values(2,40);
select * from product;
select now();
select current_date();
select curdate();
-- ************************************************check another way
create table employee_1 (id int primary key,ename varchar(50),hiredate varchar(150) check(hiredate < '2022-12-26'));
insert into employee_1 (id,ename,hiredate) values(1,"Sir taha",'2022-12-21');
insert into employee_1 (id,ename,hiredate) values(3,"Miss sara",'2021-12-25');
select * from employee_1;