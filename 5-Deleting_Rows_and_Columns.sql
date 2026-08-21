CREATE TABLE employee(

		employee_id SERIAL PRIMARY KEY,
		name VARCHAR(60) NOT NULL,
		position VARCHAR(40),
		hiring_date DATE,
		department VARCHAR(50),
		salary NUMERIC(10,2)
		
)

INSERT INTO employee (name,position ,hiring_date, department , salary)
	VALUES ('AJ','Distributor' , '2035-05-01', 'ASJ Group' , 250000),
	('HS','Retailer' , '2032-05-04' , 'ASJ Group' , 250000);

TRUNCATE TABLE employee RESTART IDENTITY

SELECT * FROM employee

DELETE FROM employee
WHERE employee_id = 5;

DELETE FROM employee
WHERE employee_id IN (3,4);