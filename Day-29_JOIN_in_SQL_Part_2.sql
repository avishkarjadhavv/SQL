-- FULL OUTER JOIN : Retrieve all employee3 and departments , including non - matching records from both tables

SELECT 
	e.employee_id , e.first_name , e.last_name , e.department_id , d.department_id , d.department_name 
FROM employees3 e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;




--  CROSS JOIN : Retrieve all possible combinations of employee3 and departments

SELECT
	e.employee_id , e.first_name , e.last_name , e.department_id , d.department_id , d.department_name
FROM employees3 e
CROSS JOIN departments d;




-- SELF JOIN : Retrieve those employees who share same department 

SELECT
	e1.employee_id , e1.first_name AS e1_Name , e2.first_name AS e2_Name , d.department_name
FROM employees3 e1
JOIN employees3 e2
ON e1.department_id = e2.department_id AND e1.employee_id <> e2.employee_id
JOIN departments d
ON e1.department_id = d.department_id;



SELECT * FROM employees3;
SELECT * FROM departments;