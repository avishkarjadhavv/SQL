CREATE TABLE students_2023(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);


INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),   -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');

SELECT * FROM students_2023;
SELECT * FROM students_2024;


-- UNION Operator -- Retrieve both table student excluding duplicates
SELECT student_name , course FROM students_2023
UNION
SELECT student_name , course FROM students_2024

-- UNION ALL Operator -- Retrieve both table students including duplicates
SELECT student_name , course FROM students_2023
UNION ALL
SELECT student_name , course FROM students_2024

-- INTERSECT Operator -- Returns commom results in both tables
SELECT student_name , course FROM students_2023
INTERSECT
SELECT student_name , course FROM students_2024

-- EXCEPT Operator
SELECT student_name , course FROM students_2023
EXCEPT
SELECT student_name , course FROM students_2024
