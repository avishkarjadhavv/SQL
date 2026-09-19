SELECT * FROM products;


-- Get the day of week on that specific date : with DATE_PART('dow',added_date)

SELECT added_date , DATE_PART('dow',added_date) FROM products;
SELECT added_date , DATE_PART('isodow',added_date) FROM products;
SELECT added_date , DATE_PART('month',added_date) FROM products;



-- Turn every date to to the first date of month,week : with DATE_TRUNC()

SELECT added_date , 
	DATE_TRUNC('month',added_date) AS start_of_month,
	DATE_TRUNC('week',added_date) AS start_of_week,
	DATE_PART('isodow',added_date)
FROM products;



-- Add or Subtract time interval from date : with INTERVAL 

SELECT added_date ,
	added_date + INTERVAL '2 days 1 month 2 year 12 hours 13 minutes 30 seconds' AS new_date
FROM products;



-- Get current time : with CURRENT_TIME 

SELECT CURRENT_TIME;


-- CONVERT STRING TO FORMATTED DATE : with TO_DATE()

SELECT TO_DATE( '12-11-2024', 'DD-MM-YYYY');       -- OUTPUT : 2024-11-12
SELECT TO_DATE( '12-11-2024', 'MM-DD-YYYY');       -- OUTPUT : 2024-12-11


