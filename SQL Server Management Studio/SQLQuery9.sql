--CREATE TABLE tbl_nflowner (
--	nflowner_id INT PRIMARY KEY NOT NULL CONSTRAINT fk_nflplayer_id FOREIGN KEY REFERENCES tbl_nflplayer(nflplayer_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	nflowner_fname VARCHAR(50) NOT NULL,
--	nflowner_lname VARCHAR(50) NOT NULL
--);

--CREATE TABLE tbl_nflplayer (
--	nflplayer_id INT PRIMARY KEY NOT NULL CONSTRAINT fk_nflplayer_id FOREIGN KEY REFERENCES tbl_nflplayer(nflplayer_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	nflplayer_fname VARCHAR(50) NOT NULL,
--	nflplayer_lname VARCHAR(50) NOT NULL
--);

USE db_sqlproject
GO

INSERT INTO tbl_nflowner 
	(nflowner_id, nflowner_fn, nflowner_ln)
	VALUES
	(1001,'Jim','Irsay'),
	(1002,'Clark','Hunt'),
	(1003,'Arthur','Blank'),
	(1004,'Denise','York'),
	(1005,'Gayle','Benson')
;

INSERT INTO tbl_nflplayer 
	(nflplayer_id, nflplayer_fn, nflplayer_ln)
	VALUES
	(201,'Patrick','Mahomes'),
	(202,'Julio','Jones'),
	(203,'Quenton','Nelson'),
	(204,'Michael','Thomas'),
	(205,'George','Kittle')
;
DROP TABLE tbl_nflplayer
CREATE TABLE tbl_nflplayer (
	nflplayer_id INT PRIMARY KEY NOT NULL,
	nflplayer_fname VARCHAR(50) NOT NULL,
	nflplayer_lname VARCHAR(50) NOT NULL
);

INSERT INTO tbl_nflplayer 
	(nflplayer_id, nflplayer_fname, nflplayer_lname)
	VALUES
	(201,'Patrick','Mahomes'),
	(202,'Julio','Jones'),
	(203,'Quenton','Nelson'),
	(204,'Michael','Thomas'),
	(205,'George','Kittle')
;

SELECT * FROM tbl_nflowner

SELECT * FROM tbl_nflplayer

ADD COLUMN tbl_nfl