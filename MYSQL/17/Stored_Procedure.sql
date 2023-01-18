create database SP_DB;
use SP_DB;
create table employee(
id int primary key auto_increment,
name varchar(50),
age int,
salary bigint,
desig varchar(50)
);
insert into employee (name,age,salary,desig) values("Ali",23,35000,"Junior Officer");
insert into employee (name,age,salary,desig) values("Sara",20,25000,"Internee");
insert into employee (name,age,salary,desig) values("Ahmed",27,50000,"Senior Officer");
insert into employee (name,age,salary,desig) values("Maria",24,40000,"Junior Officer");
insert into employee (name,age,salary,desig) values("Faisal",32,75000,"Manager");
-- -------------------------------------
create procedure sp_showemp (var_name varchar(50))
select * from employee where name = var_name;
-- =======================================
create procedure sp_emp2 (n varchar(50),designation varchar(50) )
select * from employee where name = n and desig = designation;
-- =======================================
create procedure sp_emp3 (n varchar(50),designation varchar(50) )
select * from employee where name = n or desig = designation;
call sp_showemp("Maria");
call sp_emp2("Ali","Junior Officer");
call sp_emp3("Ali","Manager");

create procedure showall()
select * from employee;
-- ==================================== insert SP
create procedure sp_store(n varchar(50),a int,sal bigint,desi varchar(50))
insert into employee (name,age,salary,desig) values (n,a,sal,desi);

call sp_store("Alpha",30,67000,"Manager");
call sp_store("Atif",20,23000,"Internee");


-- ===========================================================
create procedure sp_del(delid int)
delete from employee where id = delid;

call sp_del(3);

-- ============================================ update procedure
create procedure sp_up(n1 varchar(50),a1 int,s1 bigint,d1 varchar(50),emp_id int)
update employee set name=n1,age=a1,salary=s1,desig=d1 where id = emp_id;

create procedure sp_up1(s1 bigint,emp_id int)
update employee set salary=s1 where id = emp_id;
call showall();
-- 
call sp_up("Marium",25,34000,NULL,2) ;
call sp_up1(80000,6) ;






