use sampledb;

show tables

select * from users;

-- you can't get the record with null value directly
select * from users where email = null

-- correction (how to select a null value)
select * from users where email is null;

select * from users where age is not null;

insert into users(name, age, email) values("alina", 20, "alina@gmail.com")

-- select multiple records with condition
select * from users where UserId in (1, 2);

-- in between
select * from users where age between 19 and 22;

use sampledb;

show tables;

create table Customers (
customrId eint,
Name varchar(40),
City varchar(40),
Primary key (customerId)
)

select * from customers

insert into customers value(1, "alina", "pune"), (2, "alaya","banglore")

-- creating foreign key
create table orders (
OrderId int,
orderName int,
cusId int,
foreign key (cusId) references customers(customerId),
primary key (OrderId)
)

select * from orders

insert into orders values(101, 7898989, 1), (102, 789889, 1), (103, 68787, 2)

select * from orders where cusId = 1;

-- try adding customer id which doesn't exist in Customer
-- insert into orders values(105, 789989, 5)

-- we can't delete this records as it present in order table
delete from customers where customerId = 2

-- resolve
delete from orders where cusId = 2;
delete from customers where customerId = 2

drop table customers;
drop table orders;

show tables;

create table Customers (
customerId int,
Name varchar(40),
City varchar(40),
Primary key (customerId)
)

insert into Customers value(1, "alina", "pune"), (2, "alaya","banglore")

create table orders (
OrderId int,
orderName varchar(20),
cusId int,
-- adding constraint that will allow if we delete customers then it will be sutomattically deleted from order table
foreign key (cusId) references customers(customerId) on delete cascade,
primary key (OrderId)
)

insert into orders values(101, 7898989, 1), (102, 789889, 1), (103, 68787, 2)

delete from customers where customerId = 2

create database sample;

use sample;

-- Create Employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    hire_date DATE
);

-- Create Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create Categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50),
    description TEXT
);

-- Create Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Create Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_id, first_name, last_name, job_title, hire_date) VALUES
(1, 'John', 'Doe', 'Manager', '2022-01-10'),
(2, 'Jane', 'Smith', 'Sales', '2021-05-22'),
(3, 'Bill', 'Johnson', 'Customer Support', '2023-03-14'),
(4, 'Emma', 'Brown', 'Developer', '2020-06-30'),
(5, 'Michael', 'Davis', 'Sales', '2022-11-15'),
(6, 'Sophia', 'Martinez', 'Manager', '2019-09-19'),
(7, 'James', 'Miller', 'Customer Support', '2021-12-01'),
(8, 'Olivia', 'Wilson', 'Sales', '2020-07-05'),
(9, 'Liam', 'Moore', 'Developer', '2022-01-23'),
(10, 'Ava', 'Taylor', 'Manager', '2021-03-12'),
(11, 'Lucas', 'Anderson', 'Sales', '2023-06-10'),
(12, 'Mia', 'Thomas', 'Customer Support', '2021-10-30'),
(13, 'Charlotte', 'Jackson', 'Developer', '2022-05-18'),
(14, 'Amelia', 'White', 'Sales', '2020-09-15'),
(15, 'Benjamin', 'Harris', 'Manager', '2018-12-20'),
(16, 'Jack', 'Clark', 'Developer', '2023-08-25'),
(17, 'Henry', 'Lewis', 'Customer Support', '2019-11-04'),
(18, 'Harper', 'Lee', 'Sales', '2022-01-29'),
(19, 'Daniel', 'Walker', 'Manager', '2021-02-10'),
(20, 'Ella', 'Hall', 'Developer', '2020-04-17'),
(21, 'Logan', 'Allen', 'Sales', '2023-07-06'),
(22, 'Grace', 'Young', 'Customer Support', '2018-08-30'),
(23, 'Alexander', 'King', 'Sales', '2021-05-25'),
(24, 'Victoria', 'Scott', 'Manager', '2019-01-18'),
(25, 'Jack', 'Green', 'Customer Support', '2022-09-22'),
(26, 'Ethan', 'Adams', 'Developer', '2020-02-09'),
(27, 'Zoe', 'Baker', 'Sales', '2022-10-13'),
(28, 'Mason', 'Nelson', 'Manager', '2023-03-28'),
(29, 'Chloe', 'Carter', 'Sales', '2021-08-08'),
(30, 'Amos', 'Mitchell', 'Customer Support', '2022-04-02');

INSERT INTO categories (category_id, category_name, description) VALUES
(1, 'Electronics', 'Devices and gadgets such as smartphones and computers'),
(2, 'Clothing', 'Apparel for men, women, and children'),
(3, 'Groceries', 'Food and beverage products'),
(4, 'Home Appliances', 'Large and small household appliances'),
(5, 'Toys', 'Toys for children of various ages'),
(6, 'Books', 'Fiction and non-fiction books'),
(7, 'Furniture', 'Furniture for home and office'),
(8, 'Beauty', 'Beauty and personal care products'),
(9, 'Automotive', 'Automotive parts and accessories'),
(10, 'Sports', 'Sports equipment and gear'),
(11, 'Jewelry', 'Necklaces, rings, and other jewelry items'),
(12, 'Music', 'Musical instruments and accessories'),
(13, 'Movies', 'DVDs, Blu-rays, and streaming services'),
(14, 'Health', 'Health products and supplements'),
(15, 'Baby', 'Baby care items and clothing'),
(16, 'Garden', 'Outdoor gardening products'),
(17, 'Office Supplies', 'Stationery and office equipment'),
(18, 'Pet Supplies', 'Products for pets'),
(19, 'Arts & Crafts', 'Crafting and DIY supplies'),
(20, 'Food', 'Ready-to-eat packaged food items'),
(21, 'Shoes', 'Footwear for all ages'),
(22, 'Gifts', 'Gift items for all occasions'),
(23, 'Party Supplies', 'Items for parties and celebrations'),
(24, 'Seasonal', 'Seasonal items for holidays and events'),
(25, 'Travel', 'Travel gear and accessories'),
(26, 'Technology', 'Tech gadgets and innovations'),
(27, 'Hardware', 'Building materials and tools'),
(28, 'Music Instruments', 'Instruments for musicians'),
(29, 'Lighting', 'Lighting equipment for home and office'),
(30, 'Health & Wellness', 'Products for health, fitness, and wellness');


INSERT INTO products (product_id, product_name, category_id, price, stock_quantity) VALUES
(1, 'Smartphone', 1, 599.99, 150),
(2, 'Laptop', 1, 999.99, 80),
(3, 'T-shirt', 2, 15.99, 200),
(4, 'Jeans', 2, 40.00, 150),
(5, 'Bread', 3, 2.50, 500),
(6, 'Milk', 3, 1.80, 450),
(7, 'Washing Machine', 4, 400.00, 30),
(8, 'Microwave', 4, 100.00, 100),
(9, 'Doll', 5, 20.00, 100),
(10, 'Building Blocks', 5, 30.00, 150),
(11, 'Novel Book', 6, 10.99, 200),
(12, 'Cookbook', 6, 15.00, 120),
(13, 'Office Chair', 7, 80.00, 50),
(14, 'Desk', 7, 120.00, 40),
(15, 'Shampoo', 8, 5.99, 300),
(16, 'Face Cream', 8, 25.00, 100),
(17, 'Car Tire', 9, 50.00, 200),
(18, 'Car Battery', 9, 75.00, 100),
(19, 'Football', 10, 25.00, 150),
(20, 'Tennis Racket', 10, 70.00, 60),
(21, 'Gold Necklace', 11, 150.00, 20),
(22, 'Diamond Ring', 11, 500.00, 15),
(23, 'Guitar', 12, 150.00, 50),
(24, 'Piano', 12, 500.00, 10),
(25, 'Smartwatch', 13, 200.00, 120),
(26, 'Movie DVD', 13, 15.00, 300),
(27, 'Vitamins', 14, 20.00, 150),
(28, 'Yoga Mat', 14, 25.00, 120),
(29, 'Baby Clothes', 15, 10.00, 300),
(30, 'Baby Toys', 15, 18.00, 150);


INSERT INTO orders (order_id, customer_id, employee_id, order_date, total_amount) VALUES
(1, 1, 1, '2023-01-10', 599.99),
(2, 2, 2, '2023-02-15', 40.00),
(3, 3, 3, '2023-03-20', 100.00),
(4, 4, 4, '2023-04-25', 70.00),
(5, 5, 5, '2023-05-30', 120.00),
(6, 6, 6, '2023-06-05', 300.00),
(7, 7, 7, '2023-07-10', 150.00),
(8, 8, 8, '2023-08-15', 90.00),
(9, 9, 9, '2023-09-20', 250.00),
(10, 10, 10, '2023-10-25', 50.00),
(11, 11, 11, '2023-11-30', 500.00),
(12, 12, 12, '2023-12-05', 150.00),
(13, 13, 13, '2023-01-02', 70.00),
(14, 14, 14, '2023-02-10', 30.00),
(15, 15, 15, '2023-03-15', 60.00),
(16, 16, 16, '2023-04-10', 200.00),
(17, 17, 17, '2023-05-15', 80.00),
(18, 18, 18, '2023-06-20', 90.00),
(19, 19, 19, '2023-07-25', 500.00),
(20, 20, 20, '2023-08-05', 70.00),
(21, 21, 21, '2023-09-30', 20.00),
(22, 22, 22, '2023-10-15', 100.00),
(23, 23, 23, '2023-11-05', 80.00),
(24, 24, 24, '2023-12-25', 150.00),
(25, 25, 25, '2023-01-08', 300.00),
(26, 26, 26, '2023-02-05', 250.00),
(27, 27, 27, '2023-03-25', 60.00),
(28, 28, 28, '2023-04-10', 120.00),
(29, 29, 29, '2023-05-18', 450.00),
(30, 30, 30, '2023-06-15', 100.00);


INSERT INTO customers (customer_id, first_name, last_name, email, phone)
VALUES
(1, 'John', 'Doe', 'johndoe1@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'janesmith1@example.com', '234-567-8901'),
(3, 'Alice', 'Johnson', 'alicejohnson1@example.com', '345-678-9012'),
(4, 'Bob', 'Williams', 'bobwilliams1@example.com', '456-789-0123'),
(5, 'Charlie', 'Brown', 'charliebrown1@example.com', '567-890-1234'),
(6, 'David', 'Davis', 'daviddavis1@example.com', '678-901-2345'),
(7, 'Eva', 'Martinez', 'evamartinez1@example.com', '789-012-3456'),
(8, 'Frank', 'Garcia', 'frankgarcia1@example.com', '890-123-4567'),
(9, 'Grace', 'Hernandez', 'gracehernandez1@example.com', '901-234-5678'),
(10, 'Hank', 'Lopez', 'hanklopez1@example.com', '012-345-6789'),
(11, 'Ivy', 'Gonzalez', 'ivygonzalez1@example.com', '123-456-7891'),
(12, 'Jack', 'Wilson', 'jackwilson1@example.com', '234-567-8902'),
(13, 'Karen', 'Anderson', 'karenanderson1@example.com', '345-678-9013'),
(14, 'Larry', 'Thomas', 'larrythomas1@example.com', '456-789-0124'),
(15, 'Mona', 'Jackson', 'monajackson1@example.com', '567-890-1235'),
(16, 'Nina', 'White', 'ninawhite1@example.com', '678-901-2346'),
(17, 'Oscar', 'Lee', 'oscarlee1@example.com', '789-012-3457'),
(18, 'Paul', 'Lopez', 'paullopez1@example.com', '890-123-4568'),
(19, 'Quinn', 'Perez', 'quinnperez1@example.com', '901-234-5679'),
(20, 'Rita', 'Harris', 'ritaharris1@example.com', '012-345-6790'),
(21, 'Sam', 'Clark', 'samclark1@example.com', '123-456-7892'),
(22, 'Tina', 'Lewis', 'tinalewis1@example.com', '234-567-8903'),
(23, 'Ursula', 'Young', 'ursulayoung1@example.com', '345-678-9014'),
(24, 'Victor', 'King', 'victorking1@example.com', '456-789-0125'),
(25, 'Wendy', 'Scott', 'wendyscott1@example.com', '567-890-1236'),
(26, 'Xander', 'Adams', 'xanderadams1@example.com', '678-901-2347'),
(27, 'Yvonne', 'Baker', 'yvonnebaker1@example.com', '789-012-3458'),
(28, 'Zane', 'Nelson', 'zanenelson1@example.com', '890-123-4569'),
(29, 'Abby', 'Carter', 'abbycarter1@example.com', '901-234-5680'),
(30, 'Ben', 'Morris', 'benmorris1@example.com', '012-345-6791');

select * from customers;
select * from orders;

-- inner join
-- select from table 1 inner join table 2 on id = id
select * from customers inner join orders
on customers.customer_id = orders.customer_id

-- alias 
select ords.order_id, cus.first_name, cus.customer_id from customers cus inner join orders ords
on cus.customer_id = ords.customer_id

-- inner join on 3 tables
select orders.employee_id  from customers inner join orders 
on customer.customer_id = orders.customer_id
inner join employees on orders.employee_id  employees_id

-- left join
-- select from table 1 left join table 2 on id = id
select * from customers cus left join orders ords
on cus.customer_id = ords.customer_id

-- right join
-- select from table 1 right join table 2 on id = id
select * from customers cus right join orders ords
on cus.customer_id = ords.customer_id

-- another example
select * from orders ords right join employees emp
on ords.employee_id = emp.employee_id

-- full join : left join union right join
select * from customers cus left join orders ords
on cus.customer_id = ords.customer_id
union 
select * from customers cus right join orders ords
on cus.customer_id = ords.customer_id

-- union
select first_name from customers
union 
select order_id from orders;

-- cross join
select count(*) from customers cross join orders 



