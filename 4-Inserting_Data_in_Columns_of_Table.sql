CREATE TABLE students(
		name VARCHAR(50) NOT NULL,
		prn_no 	VARCHAR(20) PRIMARY KEY,
		attendance VARCHAR(9),
		lec_attend INT,
		tech_interests VARCHAR(60)
)

SELECT * FROM STUDENTS;

INSERT INTO students(name,prn_no,attendance,lec_attended,tech_interests)
		VALUES ('Avishkar Sunil Jadhav','RBT25IT064','Present','Backend Developer'),
		('Pawankumar Mohan Kadam','RBT25IT008','Absent','Testing Engineering'),
		('Vinit Dipak Chavhan','RBT25IT055','Present','Cyber Security'),
		('Parth Amilkanthwar','RBT25IT048','Present','Frontend Developer');

ALTER TABLE students
RENAME COLUMN lec_attend TO lec_attended;

TRUNCATE TABLE students;

ALTER TABLE students
DROP COLUMN lec_attended;