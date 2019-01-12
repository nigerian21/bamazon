
DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
item_id int(15) NOT NULL AUTO_INCREMENT,
  product_name varchar(40) NOT NULL,
  department_name varchar(30) NOT NULL,
  price int(15) DEFAULT '0',
  stock_quantity int(15) DEFAULT '0',
  PRIMARY KEY (item_ID)
);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Xbox one","Electronics", 200.00, 28 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Ps4","Electronics", 300.00, 15 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Yeezy's","Shoes", 400.00, 2 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Jordan 13's","Shoes", 250.00, 9 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Shea Moisture","Hair products", 6.00, 213 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nintendo Switch","Electronics", 299.00, 500 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Macbook Air","Electronics", 399.00, 115 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Red Dead Redemption 2","Video Games", 59.00, 402 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Blender","Appliances", 19.99, 59 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("50 Inch Tv","Electronics", 599.00, 21 );

SELECT * FROM products