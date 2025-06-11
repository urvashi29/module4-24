-- create database
create database sampledb;

-- select database to be used
use sampledb;

-- show all the tables in a database
show tables;

-- creating table
create table Customers (
Id int,
Name varchar(50),
Age tinyint,
city varchar(30)
)

-- insert data into table
insert into Customers  values(1, "Alina", 20, "pune");
insert into Customers values(2, "Alaya", 30, "banglore")

-- return all the data from a table
select * from Customers;

-- select specific data
select Name, ID from Customers;

select * from Customers where Name = "alina" and Age = 20;
select * from Customers where Id = 1;

-- insert multiple data togather
insert into Customers values(4, "Sidharth", 25, "Chandigarh"), (5, "Alishka", 20, "Delhi"), (6, "Arjun", 20, "Gurgaon")

-- add only specific columns
insert into Customers(Id, Name) values(7, "John");

-- update (set & where)
update Customers 
set Age = 24
where Id = 7;

update Customers 
set city = "pune"
where Id = 7 and Age = 24;

-- delete 
delete from Customers 
where Id = 2 

-- to delete table
drop table Customers;

-- delete database;
drop database sampledb;

-- Truncate
truncate table Customers;





