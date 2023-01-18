create database lock_db;
use lock_db;

-- ----------------------------------------------- table create
create table messages
(
id int primary key auto_increment,
message varchar(50)
);

select * from messages;
insert into messages (message) values ("Hello!");
-- table lock according to read
lock table messages read;
insert into messages (message) values ("Hi"); -- Error Code: 1099. Table 'messages' was locked with a READ lock and can't be updated
select * from messages;
unlock tables;
-- ===========================================================================================

lock table messages write;
insert into messages (message) values ("good morning");

create table greeting
(
id int primary key auto_increment,
message varchar(50)
);
unlock tables;

insert into greeting (message) values ("Happy Birthday");
