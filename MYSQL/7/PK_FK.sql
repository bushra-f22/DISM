create database DataIntegerity;
use DataIntegerity;
create table department (d_id int primary key,d_name varchar(50));
insert into department (d_id,d_name) values (1,"Faculty");
insert into department (d_id,d_name) values (2,"SRO");
insert into department (d_id,d_name) values (3,"HR");
insert into department (d_id,d_name) values (4,"Marketing");
insert into department (d_id,d_name) values (5,"Admin");
select * from department;
-- apply foreign key in a table
create table employee (eid int primary key,ename varchar(50),esalary bigint,edesig varchar(50),did_fk int, Foreign key(did_fk) references department(d_id));
-- create table employee1 (eid int primary key,ename varchar(50),esalary bigint,edesig varchar(50),did_fk int,constraint mydfk Foreign key(did_fk) references department(d_id));
insert into employee (eid,ename,esalary,edesig,did_fk) values (1,"Miss Marium",15000,"Junior Faculty",1);
insert into employee (eid,ename,esalary,edesig,did_fk) values (2,"Miss Tehreem",25000,"Senior Faculty",1);
insert into employee (eid,ename,esalary,edesig,did_fk) values (3,"Sir ALi",45000,"Senior CC",4);
insert into employee (eid,ename,esalary,edesig,did_fk) values (4,"Miss Anoosha",55000,"Senior CC",4);
select * from employee;
insert into employee (eid,ename,esalary,edesig,did_fk) values (5,"Miss Asma",95000,"HR Head",3);