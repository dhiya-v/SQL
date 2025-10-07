CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);