INSERT INTO books (id, title, author, price, stock) VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM books WHERE price<450 AND stock>30; 

UPDATE books SET stock=45 , price=420 where title ='Deep Work';

DELETE FROM books WHERE title='Ikigai';

SELECT AVG(price) AS AVG_PRICE, COUNT(*) AS TOTAL FROM books; 

SELECT * FROM books ORDER BY price DESC LIMIT 3; 

