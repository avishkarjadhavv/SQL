SELECT * FROM products;


-- Get current date and Time : with NOW()

SELECT NOW() AS current_date_time;


-- Get current date : with CURRENT_DATE()

SELECT CURRENT_DATE as currentdate;

SELECT added_date , (CURRENT_DATE - added_date) FROM products;


-- Get current time : with CURRENT_TIME()

SELECT CURRENT_TIME as CurrentTime;


-- Get only year , month , day part from added_date column : using EXTRACT()

SELECT added_date,
		EXTRACT(YEAR FROM added_date)
FROM products;

SELECT added_date,
		EXTRACT(MONTH FROM added_date)
FROM products;

SELECT added_date,
		EXTRACT(DAY FROM added_date)
FROM products;


SELECT added_date,
		EXTRACT(YEAR FROM added_date),
		EXTRACT(MONTH FROM added_date),
		EXTRACT(DAY FROM added_date)
FROM products;



-- Calculate the age between two dates : with AGE()

SELECT added_date , AGE(CURRENT_DATE,added_date) FROM products;


-- Change the format of date : with TO_CHAR()

SELECT added_date , TO_CHAR(added_date,'DD-MM-YYYY') FROM products;
SELECT added_date , TO_CHAR(added_date,'DD-MM-YY') FROM products;