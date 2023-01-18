create database testing;
use testing;
create table employee(id int,fname varchar(50),lname varchar(50),title varchar(50),age int,wage int,hire_date varchar(50));
-- Dml to insert record in a table
insert into employee (id,fname,lname,title,age,wage,hire_date) values (1,"Amy","Jordan","Ms",15,25,"2019-04-27");
insert into employee (id,fname,lname,title,age,wage,hire_date) values (2,"Bill","Tibb","Mr",61,28,"2012-05-02");
insert into employee (id,fname,lname,title,age,wage,hire_date) values (3,"Bill","Sadat","Mr",18,12,"2019-11-08");
insert into employee (id,fname,lname,title,age,wage,hire_date) values (4,"Christine","Riveles","Mrs",36,20,"2018-03-30");
insert into employee (id,fname,lname,title,age,wage,hire_date) values (5,"David","Gurien","Honorable",28,20,"2016-11-02");
-- show record 
select * from employee;
select distinct fname from employee;
select * from employee where fname ="bill" and lname ="tibb";
select * from employee where fname ="bill" or lname ="tibb";
select * from employee where (lname="Tibb" or lname="Sadat") and age = 18;
select * from employee order by fname DESC;
select * from employee order by age DESC;
select * from employee order by age ASC;
select * from employee order by title ASC;
-- matching criteria
select * from employee where age in (18,28);
select * from employee where age not in (18,28);
-- wild card clause like clause 
select * from employee where fname like 'C%';
select * from employee where fname like 'B%';
select  fname,lname  from employee where lname like '%n';
select  * from employee where title like '%nor%';
select  * from employee where lname like '_ordan';
select  * from employee where lname like '_or%';