create database organizations;
use organizations;
-- *********************************************** DDL
-- ----------------------------------------------crete table
create table employee( emp_id int,emp_name varchar(50),emp_email int);
-- -----------------------------------------------------alter table command
alter table employee drop column emp_email;
alter table employee add emp_email int;
alter table employee MODIFY column emp_email varchar(50);
-- ----------------------------------------------to reanme the table name
alter table employee rename employee_tbl;
-- *********************************************** DML
-- Insert command
insert into employee_tbl (emp_id,emp_name,emp_email) values(1,"Muhammad Ali","ali@gmail.com");
insert into employee_tbl (emp_id,emp_name,emp_email) values(2,"Sara Khan","sk@gmail.com");
insert into employee_tbl (emp_id,emp_name,emp_email) values(3,"Muhammad Ather","ma@gmail.com");
insert into employee_tbl (emp_id,emp_name,emp_email) values(4,"Muhammad Rohan","mr@gmail.com");
insert into employee_tbl (emp_id,emp_name,emp_email) values(5,"Maria Siddique","ms@gmail.com");
insert into employee_tbl (emp_id,emp_name,emp_email) values(6,"Sara Khan","sk@gmail.com");
select * from employee_tbl;
select emp_id,emp_name from employee_tbl;
update employee_tbl set emp_id=2,emp_name="alpha",emp_email ="alpha@yahoo.com" where emp_id = 2;
update employee_tbl set emp_id=1,emp_name="M.Ali",emp_email ="ali@yahoo.com" where emp_id = 1;

truncate table employee_tbl;