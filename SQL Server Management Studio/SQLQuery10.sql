
CREATE DATABASE db_sqlchallenge
USE db_sqlchallenge
GO
CREATE TABLE tbl_nflowner (
	nflowner_id INT PRIMARY KEY NOT NULL,
	nflowner_fname VARCHAR(50) NOT NULL,
	nflowner_lname VARCHAR(50) NOT NULL,
	nfl_team VARCHAR(50) NOT NULL
);


CREATE TABLE tbl_nflplayer (
	nflplayer_ids INT PRIMARY KEY NOT NULL CONSTRAINT fk_nflplayer_ids FOREIGN KEY REFERENCES tbl_nflplayer(nflplayer_ids) ON UPDATE NO ACTION,
	nflplayer_fname VARCHAR(50) NOT NULL,
	nflplayer_lname VARCHAR(50) NOT NULL,
	nfl_team VARCHAR(50) NOT NULL
);

INSERT INTO tbl_nflowner 
	(nflowner_id, nflowner_fname, nflowner_lname, nfl_team)
	VALUES
	(1001,'Jim','Irsay', 'colts'),
	(1002,'Clark','Hunt', 'chiefs'),
	(1003,'Arthur','Blank', 'falcons'),
	(1004,'Denise','York', '49ers'),
	(1005,'Gayle','Benson', 'saints')
;

INSERT INTO tbl_nflplayer 
	(nflplayer_ids, nflplayer_fname, nflplayer_lname, nfl_team)
	VALUES
	(201,'Patrick','Mahomes', 'chiefs'),
	(202,'Julio','Jones', 'falcons'),
	(203,'Quenton','Nelson', 'colts'),
	(204,'Michael','Thomas', 'saints'),
	(205,'George','Kittle', '49ers')
;

SELECT nflplayer_ids, nflowner_id
FROM tbl_nflowner
RIGHT JOIN tbl_nflplayer
ON tbl_nflowner.nfl_team = tbl_nflplayer.nfl_team;

