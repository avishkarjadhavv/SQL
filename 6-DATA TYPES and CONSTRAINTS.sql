CREATE TABLE users (
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users
	VALUES (1,'AJ', 'omkaravishkar@gmail.com', 19),
	(2,'aj', 'aj@gmail.com', 27);

SELECT * FROM users

ALTER TABLE users
ALTER COLUMN reg_date TYPE TIMESTAMPTZ ;