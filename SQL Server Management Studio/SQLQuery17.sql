CREATE DATABASE db_lms
USE db_lms
GO

CREATE TABLE library_branch  (
	branch_id INT NOT NULL PRIMARY KEY,
	branch_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(255) NOT NULL
);

CREATE TABLE book_copies	(
	book_id INT,
	branch_id INT,
	number_of_copies INT NOT NULL
);

CREATE TABLE books (
	book_id INT NOT NULL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	publisher_name VARCHAR(255) 
);

CREATE TABLE book_authors	(
	book_id INT,
	author_name VARCHAR(50) NOT NULL
);



CREATE TABLE borrower (
	card_num INT NOT NULL PRIMARY KEY,
	borrower_name VARCHAR(50) NOT NULL,
	borrower_address VARCHAR(50) NOT NULL,
	borrower_phone VARCHAR(255) NOT NULL
);

CREATE TABLE book_loans (
	book_id INT,
	branch_id INT,
	card_num INT,
	date_out VARCHAR(50) NOT NULL,
	date_due VARCHAR(50) NOT NULL
);

CREATE TABLE publisher (
	publisher_name VARCHAR(255) NOT NULL PRIMARY KEY,
	publisher_address VARCHAR(255) NOT NULL,
	publisher_phone VARCHAR(255) NOT NULL
);



ALTER TABLE book_copies ADD FOREIGN KEY (book_id) REFERENCES books(book_id)
ALTER TABLE book_copies ADD FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id)

ALTER TABLE books ADD FOREIGN KEY (publisher_name) REFERENCES publisher(publisher_name)

ALTER TABLE book_authors ADD FOREIGN KEY (book_id) REFERENCES books(book_id)

ALTER TABLE book_loans ADD FOREIGN KEY (book_id) REFERENCES books(book_id)
ALTER TABLE book_loans ADD FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id)
ALTER TABLE book_loans ADD FOREIGN KEY (card_num) REFERENCES borrower(card_num)

INSERT INTO library_branch
	(branch_id, branch_name, branch_address)
	VALUES
	(1, 'sharpstown branch', '122 Sleef St.'),
	(2, 'brookedale branch', '1618 Sledders Way'),
	(3, 'slopeville branch', '2929 Befe Ave.'),
	(4, 'hills branch', '23 Bloop Dr.'),
	(5, 'lewis branch', '97 Hillsbrook St.'),
	(6, 'tortoise branch', '9248 Iris St.')
;

INSERT INTO publisher
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Plo Paper Co.','12 Richmond St.','713-098-1345'),
	('Books and Pub.','15 Westheimer Ave.','713-847-1947'),
	('Ink Highway','14 Mandell Rd.','713-284-1046'),
	('Lines of Ink','11 Dunlavy St.','713-297-5839'),
	('Publish Dis','93 West Grey St.','713-305-2930')
;


INSERT INTO books
	(book_id, title, publisher_name)
	VALUES
	(12, 'The Lost Tribe', 'Plo Paper Co.'),
	(13, 'In search of Lost Time', 'Lines of Ink'),
	(14, 'Ulysses', 'Lines of Ink'),
	(15, 'Don Quixote', 'Plo Paper Co.'),
	(16, 'The Great Gatsby', 'Publish Dis'),
	(17, 'One Hundred Years of Solitude', 'Ink Highway'),
	(18, 'Moby Dick', 'Publish Dis'),
	(19, 'War and Peace', 'Ink Highway'),
	(20, 'Lolita', 'Publish Dis'),
	(21, 'Hamlet', 'Ink Highway'),
	(22, 'The Catcher in the Rye', 'Plo Paper Co.'),
	(23, 'The Odyssey', 'Ink Highway'),
	(24, 'The Brothers Karamazov', 'Books and Pub.'),
	(25, 'Crime and Punishment', 'Ink Highway'),
	(26, 'Madame Bovary', 'Publish Dis'),
	(27, 'The Divine Comedy', 'Books and Pub.'),
	(28, 'The Adventures of Huckleberry Finn', 'Publish Dis'),
	(29, 'Pride and Prejudice', 'Plo Paper Co.'),
	(30, 'Wuthering Heights', 'Books and Pub.'),
	(31, 'To the Lighthouse', 'Publish Dis')
;

INSERT INTO book_copies
	(book_id, branch_id, number_of_copies)
	VALUES
    (12, 1, 123),
	(13, 3, 124),
	(14, 2, 534),
	(15, 5, 12),
	(16, 3, 13),
	(17, 1, 44),
	(12, 5, 14),
	(19, 4, 15),
	(20, 3, 11), 
    (21, 2, 9),
    (22, 6, 10),
	(23, 1, 21),
	(24, 4, 19),
	(25, 3, 23),
	(26, 1, 65),
	(27, 2, 55),
    (28, 6, 3),
	(29, 1, 13),
	(30, 4, 21),
	(31, 5, 42)
;


INSERT INTO book_authors
	(book_id, author_name)
	VALUES
	(12, 'Mark Lee'),
	(13, 'Marcel Proust'),
	(14, 'James Joyce'),
	(15, 'Miguel de Cervantes'),
	(16, 'F. Scott Fitzgerald'),
	(17, 'Gabriel Garcia Marquez'),
	(18, 'Herman Melville'),
	(19, 'Leo Tolstoy'),
	(20, 'Vladimir Nabokov'),
	(21, 'William Shakespeare'),
	(22, 'J.D. Salinger'),
	(23, 'Homer'),
	(24, 'Fyodor Dostoyevsky'),
	(25, 'Fyodor Dostoyevsky'),
	(26, 'Gustave Flaubert'),
	(27, 'Dante Alighieri'),
	(28, 'Mark Twain'),
	(29, 'Jane Austen'),
	(30, 'Emily Bronte'),
	(31, 'Virginia Woolf')
;

INSERT INTO borrower
	(card_num, borrower_name, borrower_address, borrower_phone)
	VALUES
	(91, 'Bill','22 Blogger St.','713-222-1111'),
	(92, 'Joe','34 Owl Ln.','713-333-2222'),
	(93, 'Sally','88 Phlat Dr.','713-555-3333'),
	(94, 'Helen','12 Lacey Ave.','713-888-9898'),
	(95, 'John','64 Wale Dr.','713-111-4343'),
	(96, 'Lara',' 94 Laremy Rd','713-322-7575'),
	(97, 'Bob','35 Aspen St.','713-654-1923'),
	(98, 'Suzy','29 Bland Dr.','713-296-1037')
;

INSERT INTO book_loans
	(book_id, branch_id, card_num, date_out, date_due)
	VALUES
	(12, 1, 98, '11/07/20','11/07/22'),
	(15, 3, 96,  '09/03/21','09/03/23'),
	(18, 5, 95, '05/05/20','05/05/22'),
	(22, 2, 97, '03/01/20','03/01/22'),
	(30, 4, 95, '01/02/20','01/02/22'),
	(26, 6, 96, '02/05/21','02/05/23'),
	(29, 2, 94, '08/07/22','08/07/24'),
	(31, 4, 94, '04/02/21','04/02/23')
;

CREATE PROC lost_tribe
AS
SELECT number_of_copies, branch_name 
FROM book_copies
FULL OUTER JOIN library_branch
ON book_copies.branch_id = library_branch.branch_id 
WHERE book_id = 12 AND library_branch.branch_id = 1

CREATE PROC how_many
AS
SELECT number_of_copies, branch_name 
FROM book_copies
FULL OUTER JOIN library_branch
ON book_copies.branch_id = library_branch.branch_id 
WHERE book_id = 12 


CREATE PROC no_books
AS
SELECT borrower_name, book_loans.card_num
FROM borrower
FULL OUTER JOIN book_loans
ON book_loans.card_num = borrower.card_num
WHERE borrower.card_num < 94;



