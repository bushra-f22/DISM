create database db_join;
use db_join;
create table customer (CustomerID int primary key,FirstName varchar(50),LastName varchar(50),Country varchar(50),Age int,Gender varchar(50));

insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (214431,"Jack","Swanson","Germany",34,"Male");
insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (956437,"Joe","Voight","France",22,"Female");
insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (111278,"Christian","Gale","Italy",19,"Male");
insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (897867,"Karl","Davis","Switzerland",22,"Male");
insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (789023,"Berry","Chase","Netherlands",24,"Female");
insert into  customer (CustomerID,FirstName,LastName,Country,Age,Gender) values (12,NULL,NULL,NULL,NULL,NULL);
select * from customer;
-- ******************************************** order detail table
create table orders (OrderID int primary key auto_increment,Status varchar(50),Amount bigint,CusId_FK int, foreign key (CusId_FK) references customer(CustomerID));
insert into  orders (Status,Amount,CusId_FK) values ("Paid",10000,214431);
insert into  orders (Status,Amount,CusId_FK) values ("Unpaid",6780,956437);
insert into  orders (Status,Amount,CusId_FK) values ("Unpaid",12000,897867);
insert into  orders (Status,Amount,CusId_FK) values ("Paid",4500,111278);
insert into  orders (Status,Amount,CusId_FK) values ("Paid",2300,214431);
insert into  orders (Status,Amount,CusId_FK) values ("Unpaid",4300,789023);
insert into  orders (Status,Amount,CusId_FK) values (NULL,NULL,NULL);
insert into  orders (Status,Amount,CusId_FK) values (NULL,NULL,214431);
select * from orders;

delete from orders where OrderID=7;
delete from customer where CustomerID=214431;

select * from customer join orders on customer.CustomerID= orders.CusId_FK;
 -- **************************** subquery
 select * from (select FirstName,LastName,Country,Age,OrderId,status,amount from customer join orders on customer.CustomerID= orders.CusId_FK) As orders;
-- *******************************************greater then
 select * from (select FirstName,LastName,Country,Age,OrderId,amount from customer join orders on customer.CustomerID= orders.CusId_FK) As More_then_5000 where amount > 5000;
 -- *******************************************paid status
 select * from (select FirstName,LastName,Country,Age,OrderId,status from customer join orders on customer.CustomerID= orders.CusId_FK) As paid_status where status ="Paid";
 
 -- ******************** type inner join
 select firstname,lastname,age,orderid,amount,status from customer inner join orders on customer.CustomerID= orders.CusId_FK;
 
  -- ******************** type left outer join
 select firstname,lastname,age,orderid,amount,status   from customer left outer join orders on customer.CustomerID= orders.CusId_FK;
 
 
   -- ******************** type right outer join
 select firstname,lastname,age,orderid,amount,status   from customer right outer join orders on customer.CustomerID= orders.CusId_FK;
    -- ******************** type cross join
 select firstname,lastname,age,orderid,amount,status   from customer cross join orders ;
 
 
 
 
 
 
 
 
 
 
