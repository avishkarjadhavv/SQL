CREATE TABLE employees3(
	employee_id INTEGER PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department_id INTEGER
);

INSERT INTO employees3(employee_id,first_name,last_name,department_id)
	VALUES(1,'Rahul','Sharma',101),
	(2,'Priya','Mehta',102),
	(3,'Ankit','Verma',103),
	(4,'Simran','Kaur',NULL),
	(5,'Aman','Singh',101);


CREATE TABLE departments(
	department_id INTEGER,
	department_name VARCHAR(50)
);

INSERT INTO departments(department_id,department_name)
	VALUES(101,'Sales'),
	(102,'Marketing'),
	(103,'IT'),
	(104,'HR');





-- INNER JOIN  : Retrieves employees3 and thier department names where a match exists

	SELECT e.employee_id , e.first_name , e.last_name , d.department_name
	FROM employees3 e
	INNER JOIN departments d
	ON e.department_id = d.department_id;


-- LEFT JOIN  : retrieve all employees3 and thier department_names , including those without a department

	SELECT e.employee_id , e.first_name , e.last_name , e.department_id , d.department_id , d.department_name
	FROM employees3 e
	LEFT JOIN departments d
	ON e.department_id = d.department_id;


-- RIGHT JOIN : Retrieve all departments and th employee3 working in them , including departments with no employee
	
	SELECT e.employee_id , e.first_name , e.last_name , e.department_id , d.department_id , d.department_name
	FROM employees3 e
	RIGHT JOIN departments d
	ON e.department_id = d.department_id;

	
SELECT * FROM employees3;
SELECT * FROM departments;
