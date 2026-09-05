SELECT * FROM employee2

-- Q1) Retrieve employees whose salary are between 40000 and 60000 - Use BETWEEN Operator

SELECT * FROM employee2
WHERE salary BETWEEN 40000 AND 60000;


-- Q2) Find employees whose first_name starts with 'A'	- Use LIKE Operators

SELECT * FROM employee2
WHERE first_name LIKE 'A%';


-- Q3) Retrieve employees who belongs to either 'Finance' or 'Marketing' departments  - Use IN Operator

SELECT * FROM employee2
WHERE department IN ('Finance','Marketing');