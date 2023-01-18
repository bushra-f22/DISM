create database partition_conti;
use partition_conti;
create table orders_hash
(
customer_name varchar(50),
bill_no int not null,
store_id int primary key,
order_date date,
amount bigint
)
partition by hash(store_id)
partitions 10;
drop table orders_hash;
insert into orders_hash value ('Mark',101,10,'2019-12-10',1450);
insert into orders_hash value ('Steve',102,12,'2012-12-10',2300);
insert into orders_hash value ('Stewart',103,11,'2010-06-12',1234);
insert into orders_hash value ('Mathew',104,13,'2012-12-10',2234);
insert into orders_hash value ('Smith',105,14,'2022-05-23',1345);
insert into orders_hash value ('Adam',106,16,'2016-07-06',1423);
insert into orders_hash value ('Nathan',107,15,'2022-01-01',1290);
insert into orders_hash value ('Roger',108,17,'2021-05-12',1388);
insert into orders_hash value ('Alpha',109,18,'2022-05-12',1088);
-- --------------------------------------------- partition details
select table_name,PARTITION_NAME,TABLE_ROWS,AVG_ROW_LENGTH,DATA_LENGTH FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_SCHEMA = 'partition_conti' AND TABLE_NAME= 'orders_hash';
-- ------------------------ employee
create table employee
(
emp_id int,
emp_name varchar(50),
emp_email varchar(50),
emp_salary bigint,
unique(emp_email)
)partition by key(emp_email)
partitions 4;
-- -----------------------------------------------------------------insert record
insert into employee values(1,"Ali",'ali@gmail.com',34000);
insert into employee values(2,"Asad",'as@gmail.com',24000);
insert into employee values(3,"Sara",'sara@gmail.com',33000);
insert into employee values(4,"Maria",'maria@gmail.com',37000);
insert into employee values(5,"Amjad",'amj@gmail.com',14000);
-- --------------------------------------------- partition details
select table_name,PARTITION_NAME,TABLE_ROWS,AVG_ROW_LENGTH,DATA_LENGTH FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_SCHEMA = 'partition_conti' AND TABLE_NAME= 'employee';

select to_days('2023-01-11');


create table employee1
(
emp_id int,
emp_name varchar(50)
);  

select * from employee1;

lock table employee1 write;
lock table employee1 read;
unlock tables;
insert into employee1 values(5,"ALpha");
delete from employee1 where emp_id =1;




