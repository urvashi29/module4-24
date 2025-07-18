create database transaction

use transaction

create table employee (
empId int primary key, 
name varchar(40),
age tinyint,
city varchar(50),
income int
)


insert into employee values(1, "alina", 23, "pune", 50000);

select * from employee

create table orders (
orderId int primary key,
productName varchar(40),
orderNumber int, 
orderDate datetime
)

start transaction;
insert into orders values(1, "Laptop", 2121, "2025-06-19")
select * from orders

-- to complete/commit the transaction
commit;

-- rollback
start transaction;
delete from employee;
select * from employee
rollback;

-- savepoint
start transaction;
insert into orders values(2, "Mobile", 1515, "2025-06-20")
savepoint mysapoint_1

insert into orders values(3, "Printer", 8988, "2025-06-22")
savepoint mysapoint_2

rollback to savepoint mysapoint_1
commit





