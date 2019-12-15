DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
	item_id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price NUMERIC(7,2)NOT NULL,
    stock_quantity INTEGER(10),
    PRIMARY KEY(item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ('A3', 'Audi Sedan', 30000, 10),
	  ('A4', 'Audi Sedan', 35000, 30),
	  ('A5', 'Audi Sedan', 40000, 25),
      ('A6', 'Audi Sedan', 60000, 20),
      ('A8', 'Audi Sedan', 80000, 3),
      ('Q5', 'Audi SUV', 45000, 10),
      ('Q7', 'Audi SUV', 70000, 5),
      ('S3', 'Audi Sport Sedan', 45000, 10),
      ('S4', 'Audi Sport Sedan', 60000, 15),
      ('S5', 'Audi Sport Sedan', 75000, 4),
      ('S6', 'Audi Sport Sedan', 80000, 3),
      ('S7', 'Audi Sport Sedan', 90000, 2),
      ('TT', 'Audi Coupe Convertible', 55000, 10),
      ('R8', 'Audi Coupe Convertible', 99000, 2),
      ('RS4', 'Audi Sport Sedan', 80000, 1);


SELECT * FROM products;


