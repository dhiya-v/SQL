CREATE DATABASE groceryshop;

USE groceryshop;

CREATE TABLE products (product_id INT AUTO_INCREMENT PRIMARY KEY ,product_name VARCHAR(100) ,price INT);

ALTER TABLE products ADD COLUMN category VARCHAR(100);

TRUNCATE TABLE products;

DROP DATABASE groceryshop;