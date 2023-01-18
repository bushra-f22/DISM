create database db_partition;
use db_partition;
-- -----------------------------------------create table partition with range
create table orders
(
order_id int,
order_date date,
customer_name varchar(50),
customer_city varchar(50),
order_amount int
)
partition by range(year(order_date))(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022));
-- ------------------------------------------ step2 insert record in orders table
insert into orders values (101,'2021-12-19','Mark','Sydney',15800);
insert into orders values (102,'2021-12-09','Steve','Brisbane',50000);
insert into orders values (103,'2020-10-12','Stewart','Melbourne',12344);
insert into orders values (104,'2020-08-04','Methew','Brisbane',22345);
insert into orders values (105,'2019-11-12','Smith','Adelaide',13455);
insert into orders values (106,'2019-05-02','Adam','Canberra',14233);
select * from orders;
-- --------------------------------------------- partition details
select table_name,PARTITION_NAME,TABLE_ROWS,AVG_ROW_LENGTH,DATA_LENGTH FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_SCHEMA = 'db_partition' AND TABLE_NAME= 'ORDERS';

insert into orders values (107,'2021-12-19','Alpha','Berlin',45800);



-- -----------------------------------------create table partition with list
create table orders_lst
(
customer_name varchar(50),
bill_no int not null,
store_id int,
date_of_bill date not null,
amount decimal(8,2) not null
)
partition by list (store_id)(
partition psydney values IN(10,12),
partition pbrisbane values IN(11,13),
partition padelaide values IN(14,16),
partition pcanberra values IN(15,17)
);
-- insert record orders_lst
insert into orders_lst value ('Mark',101,10,'2019-12-10',14500);
insert into orders_lst value ('Steve',102,12,'2012-12-10',23000);
insert into orders_lst value ('Stewart',103,11,'2010-06-12',12344);
insert into orders_lst value ('Mathew',104,13,'2012-12-10',22345);
insert into orders_lst value ('Smith',105,14,'2022-05-23',13455);
insert into orders_lst value ('Adam',106,16,'2016-07-06',14233);
insert into orders_lst value ('Nathan',107,15,'2022-01-01',12900);
insert into orders_lst value ('Roger',108,17,'2021-05-12',13880);

-- --------------------------------------------- partition details
select table_name,PARTITION_NAME,TABLE_ROWS,AVG_ROW_LENGTH,DATA_LENGTH FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_SCHEMA = 'db_partition' AND TABLE_NAME= 'orders_lst';


insert into orders_lst values ('Alpha',109,13,'2023-01-09',45800);











