SELECT * FROM employee2
WHERE age>= 50 AND salary >= 70000;


SELECT * FROM employee2
WHERE age>= 50 OR salary >= 70000;


SELECT * FROM employee2
WHERE NOT age >= 50;

SELECT * FROM employee2
WHERE NOT age >= 50 AND employee_id <> 1;



