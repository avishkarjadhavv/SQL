CREATE TABLE books(
	Book_ID INTEGER PRIMARY KEY,
	Title VARCHAR(100),
	Author VARCHAR(50),
	Genre VARCHAR(50),
	Published_Year INTEGER,
	Price NUMERIC(10,2),
	Stock INTEGER
)

CREATE TABLE customers(
	Customer_ID INTEGER PRIMARY KEY,
	Name VARCHAR(60),
	Email VARCHAR(50),
	Phone INTEGER,
	City VARCHAR(50),
	Country VARCHAR(50)
)

ALTER TABLE customers
ALTER COLUMN Phone TYPE VARCHAR(20);

ALTER TABLE customers
ALTER COLUMN Country TYPE VARCHAR(100);



CREATE TABLE orders(
	Order_ID INTEGER PRIMARY KEY,
	Customer_ID INTEGER,
	Book_ID INTEGER,
	Order_Date DATE,
	Quantity INTEGER,
	Total_Amount NUMERIC(10,2)
)

SET datestyle = 'MDY';

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_book
FOREIGN KEY (book_id)
REFERENCES books(book_id);



SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;