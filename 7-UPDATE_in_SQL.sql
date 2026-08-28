CREATE TABLE users (
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEAFAULT CURRENT_TIMESTAMP,
	city VARCHAR(40)
);

SELECT * FROM users;

INSERT INTO users(user_id,name,email,age,reg_date,city)
VALUES (5,'Vinit','vinit@email.com',19,'2026-08-13','Nanded');

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';