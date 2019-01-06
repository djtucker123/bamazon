DROP DATABASE IF EXISTS bamazon; --drop the db if it exists
-- Create the database
CREATE DATABASE bamazon;

USE bamazon; -- use this db for subsequent use (make this primary/active)I like how you 

-- define table (products) and declare columns/properties
CREATE TABLE products (
    id INTEGER AUTO_INCREMENT NOT NULL, -- unique id, next number row declaration also use as primary key
    item_id INTEGER NOT NULL,
    product_name VARCHAR(15) NOT NULL, -- product declaration (15 char for now)
    department_name VARCHAR(15) NOT NULL, -- grocery department declaration (15 char for now)
    price float(4, 2) NOT NULL, -- capping price at 99.99 (not targeting units for cost)
    stock_quantity INTEGER, --iniital stock on hand quantities
    createdAt Date,
    updatedAt Date,
    PRIMARY KEY (id)
);
-- seed data to insert into products table -- 4 departments, 3 products in each of various cost per unit (unit undeclared)
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (1,'Apple','Produce',1.50,22);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (2,'Orange','Produce',2.00,14);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (3,'Lettuce','Produce',2.15,6);

INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (4,'Beef','Meat',5.22,10);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (5,'Chicken','Meat',4.00,14);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (6,'Shrimp','Meat',9.75,15);

INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (7,'Milk','Dairy',3.09,34);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (8,'Cheese','Dairy',3.80,9);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (9,'Yogurt','Dairy',0.75,24);

INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (10,'Bagle','Bakery',0.25,28);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (11,'Bread','Bakery',2.00,30);
INSERT INTO products(item_id,product_name,department_name,price,stock_quantity) VALUES (12,'Cupcake','Bakery',0.20,18);







-- SELECT * FROM products; -- validate table updated with seed data
