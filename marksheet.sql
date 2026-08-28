CREATE TABLE marksheet(
prn VARCHAR(20) NOT NULL,
subject VARCHAR(10) NOT NULL,
exam VARCHAR(10) NOT NULL,
marks INT,
is_Pass BOOLEAN
)

select * from marksheet
WHERE subject = 'OS' AND exam = 'TA1';

UPDATE marksheet
SET is_Pass = True,
	marks = 16
WHERE subject = 'FDS' AND prn = 'RBT25IT023' AND exam = 'TA1';

INSERT INTO marksheet(prn,subject,exam)
VALUES ('RBT25IT046','FDS','TA1'),
('RBT25IT046','OS','TA1'),
('RBT25IT046','COA','TA1'),
('RBT25IT046','SED','TA1'),
('RBT25IT046','P&S','TA1');

INSERT INTO marksheet(prn,subject,exam)
SELECT prn,subject,'ESE' FROM marksheet
WHERE exam = 'TA1';


SELECT current_user;


SELECT column_name
FROM information_schema.columns
WHERE table_name = 'marksheet'
ORDER BY ordinal_position;
