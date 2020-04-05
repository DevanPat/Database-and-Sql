CREATE DATABASE db_school2

USE db_school2
GO



CREATE TABLE tbl_classes	(
	classes_id INT NOT NULL PRIMARY KEY,
	classes_name VARCHAR(50) NOT NULL,
	students_id INT,
	instructors_id INT 
);

ALTER TABLE tbl_classes ADD FOREIGN KEY (students_id) REFERENCES tbl_students(students_id)
ALTER TABLE tbl_classes ADD FOREIGN KEY (instructors_id) REFERENCES tbl_instructors(instructors_id)

CREATE TABLE tbl_students	(
	students_id INT NOT NULL PRIMARY KEY,
	students_name VARCHAR(50) NOT NULL,
	classes_id INT,
	instructors_id INT 
);

ALTER TABLE tbl_students ADD FOREIGN KEY (classes_id) REFERENCES tbl_classes(classes_id)
ALTER TABLE tbl_students ADD FOREIGN KEY (instructors_id) REFERENCES tbl_instructors(instructors_id)

CREATE TABLE tbl_instructors	(
	instructors_id INT NOT NULL PRIMARY KEY,
	instructors_name VARCHAR(50) NOT NULL,
	classes_id INT,
	students_id INT 
);

ALTER TABLE tbl_instructors ADD FOREIGN KEY (classes_id) REFERENCES tbl_classes(classes_id)
ALTER TABLE tbl_instructors ADD FOREIGN KEY (students_id) REFERENCES tbl_students(students_id)

INSERT INTO tbl_classes
	(classes_id, classes_name)
	VALUES
	(1, 'software developer bootcamp'),
	(2, 'c# bootcamp')
;

INSERT INTO tbl_students
	(students_id, students_name,)
	VALUES
	(10, 'jim'),
	(11, 'bill'),
	(12, 'joe'),
	(13, 'bob'),
	(14, 'suzy'),
	(15, 'miley')
;

INSERT INTO tbl_instructors
	(instructors_id, instructors_name)
	VALUES
	(20, 'dawn'),
	(21, 'lisa')
;



UPDATE tbl_students SET classes_id = 1 WHERE students_id <= 12
UPDATE tbl_students SET classes_id = 2 WHERE students_id >= 13

UPDATE tbl_classes SET instructors_id = 20 WHERE classes_id = 1
UPDATE tbl_classes SET instructors_id = 21 WHERE classes_id = 2

UPDATE tbl_instructors SET classes_id = 1 WHERE instructors_id = 20
UPDATE tbl_instructors SET classes_id = 2 WHERE instructors_id = 21


SELECT * FROM tbl_instructors

SELECT * FROM tbl_students
ORDER BY students_name ASC;

SELECT * FROM tbl_classes

SELECT tbl_students.students_id, tbl_instructors.instructors_name, tbl_classes.classes_name
FROM ((tbl_students
INNER JOIN tbl_instructors ON tbl_students.instructors_id = tbl_instructors.instructors_id)
INNER JOIN tbl_classes ON tbl_students.classes_id = tbl_classes.classes_id);


