CREATE DATABASE db_school2

USE db_school2
GO

CREATE TABLE tbl_classes	(
	classes_id INT NOT NULL PRIMARY KEY,
	classes_name VARCHAR(50) NOT NULL,
	students_id INT NOT NULL,
	instructors_id INT NOT NULL
);

ALTER TABLE tbl_classes ADD FOREIGN KEY (students_id) REFERENCES tbl_students(students_id)
ALTER TABLE tbl_classes ADD FOREIGN KEY (instructors_id) REFERENCES tbl_instructors(instructors_id)

CREATE TABLE tbl_students	(
	students_id INT NOT NULL PRIMARY KEY,
	students_name VARCHAR(50) NOT NULL,
	classes_id INT NOT NULL,
	instructors_id INT NOT NULL
);

ALTER TABLE tbl_students ADD FOREIGN KEY (classes_id) REFERENCES tbl_classes(classes_id)
ALTER TABLE tbl_students ADD FOREIGN KEY (instructors_id) REFERENCES tbl_instructors(instructors_id)

CREATE TABLE tbl_instructors	(
	instructors_id INT NOT NULL PRIMARY KEY,
	instructors_name VARCHAR(50) NOT NULL,
	classes_id INT NOT NULL,
	students_id INT NOT NULL
);

ALTER TABLE tbl_instructors ADD FOREIGN KEY (classes_id) REFERENCES tbl_classes(classes_id)
ALTER TABLE tbl_instructors ADD FOREIGN KEY (students_id) REFERENCES tbl_students(students_id)

