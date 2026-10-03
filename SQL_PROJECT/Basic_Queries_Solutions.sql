SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;


-- Q1) Retrieve all books in "Fiction" Genre 

SELECT * FROM books
WHERE genre = 'Fiction';

-- Q2) Find books published after year 1950

SELECT * FROM books
WHERE published_year > 1950;

-- Q3) List all customers from Canada

SELECT customer_id , name , country FROM customers
WHERE country = 'Canada';

-- Q4) Show orders placed in November 2023

SELECT * FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 09 AND EXTRACT(YEAR FROM order_date) = 2023;

-- Q5) Retrieve the total stock of books available

SELECT SUM(stock) AS total_stock FROM books;

-- Q6) Find the details of the most expensive books

SELECT * FROM books AS max_price
WHERE price = (SELECT MAX(price) FROM books) ;

-- Q7) Show all customers who ordered more than 1 quantity of a book

SELECT
	c.customer_id , c.name , o.quantity
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id AND quantity > 1;

-- Q8) Retrieve all orders where the total amount exceeds $20

SELECT * FROM orders
WHERE total_amount > 20;

-- Q9) List all genre available in books table

SELECT DISTINCT genre FROM books;

-- Q10) Find the book with lowest stock

SELECT * FROM books
WHERE stock = (SELECT MIN(stock) FROM books);

-- Q11) Calculate the total revenue generated from all orders

SELECT SUM(total_amount) AS total_revenue FROM orders;