-- Q1) Find employees where email column is null 

SELECT * FROM employee2
WHERE email IS NULL;


-- Q2) List employees whose salary are sorted in Ascending order

SELECT * FROM employee2 ORDER BY salary ASC;

-- Q3) Retrieve the top 5 highest paid employees 

SELECT first_name ,last_name , salary
FROM employee2
ORDER BY salary DESC
LIMIT 5;

-- Q4) Retrieve the list of unique departments

SELECT DISTINCT department FROM employee2;


-- Q5) Count no. of unique departments in company

SELECT COUNT (DISTINCT department) AS dep_count FROM employee2