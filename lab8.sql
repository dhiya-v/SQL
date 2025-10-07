CREATE DATABASE BookStoreDB;
CREATE TABLE authors ( author_id INT PRIMARY KEY, name VARCHAR(100), country VARCHAR(100) ); 
CREATE TABLE books ( book_id INT PRIMARY KEY, title VARCHAR(100), price INT, author_id INT, FOREIGN KEY (author_id) REFERENCES authors (author_id) ); 
ALTER TABLE books ADD COLUMN published_year INT ;
TRUNCATE TABLE books;
DROP DATABASE BookStoreDB;