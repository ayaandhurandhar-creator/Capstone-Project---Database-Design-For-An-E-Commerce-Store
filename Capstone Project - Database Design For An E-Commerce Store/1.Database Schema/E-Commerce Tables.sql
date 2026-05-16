-- CREATE DATABASE ayaanshop ;
-- USE ayaanshop ;





create table customers ( 
customer_id int primary key auto_increment,
name varchar (100) , 
email varchar(150) unique ,
city varchar (100),
signup_date date
);


CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR (100),
category varchar(50) ,
price decimal(10,2),
stock int 
);

CREATE TABLE orders (
order_id int primary key auto_increment,
customer_id int,
order_date date ,
order_status varchar(50),
foreign key (customer_id) references customers(customer_id)

);

create table order_items(
order_item_id int primary key auto_increment , 
order_id int ,
product_id int ,
quantity int ,
foreign key (order_id) references orders(order_id) ,
foreign key (product_id) references products(product_id)

);

create table payments (
payment_id int primary key auto_increment , 
order_id int ,
payment_mode varchar(30),
amount decimal(10,2),
payment_date date,
foreign key (order_id) references orders(order_id)
);