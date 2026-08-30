DROP TABLE employee2

CREATE TABLE employee2(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(70),
department VARCHAR(50),
salary numeric(10,2),
joining_date DATE,
age INT
);

SELECT * FROM employee2;

copy
employee2 ( employee_id, first_name, last_name , department, salary, joining_date, age )
FROM 'C:\Users\lenovo\Documents\COLLEGE-CAREER\SQL\employee_data.csv'
DELIMITER ','
CSV HEADER;