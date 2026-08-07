drop database if exists foreigndb;
create database foreigndb;

use foreigndb;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(101,'John'),
(102,'Alice'),
(103,'David');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Keyboard');




CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT, -- ye forign ki tarah kaam keregi
    product_id INT,
    quantity INT,                                                                      -- this is called child table 
    constraint customer_id_fk Foreign key(customer_id) references customers(customer_id) on delete cascade,
    constraint product_id_fk Foreign key(product_id) references products(product_id)
);



-- we do join. [Wrong name]
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id=c.customer_id;


-- wrong can't order if the product is not listed
SELECT *
FROM orders o
LEFT JOIN products p
ON o.product_id=p.product_id;




-- ----------- $$$$$$$$ ------

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

drop database if exists foreigndb;
create database foreigndb;

use foreigndb;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(101,'John'),
(102,'Alice'),
(103,'David');
(108,'Raja');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Keyboard');



CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT
);


INSERT INTO orders
VALUES
(10002,108,2,5);
INSERT INTO orders
VALUES
(10001,101,2,9);



-- we do join. [Wrong name]
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id=c.customer_id;
-- constarint fk_name foreign key(column1) references parent_table(parent_column)
-- foreign key bnane ke liye parent_column hona jruri h






-- wrong can't order if the product is not listed
SELECT *
FROM orders o
LEFT JOIN products p
ON o.product_id=p.product_id;




-- ----------- $$$$$$$$ ------

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);
select * from orders;
select * from customers;
select * from products;

insert into customers values(108,'Raja');
select * from customers;

insert into orders values(10003,101,7,2);
select * from orders;
select * from products;
SELECT *
FROM orders o
LEFT JOIN products p
ON o.product_id=p.product_id;
select * from products;
select * from orders;
select * from customers;
-- dml(insert)
delete from customers where customer_id=101;
select * from customers;
select * from orders;
select * from products;



