
--INSERT INTO tbl_nutrition
--	(nutrition_type, nutrition_cost)
--	VALUES
--	('raw fish', 1500),
--	('living rodents', 600),
--	('mixture of fruit and rice', 800),
--	('warm bottle of milk', 600),
--	('syringe fed broth', 600),
--	('lard and seed mix', 300),
--	('aphids', 150),
--	('vitamin and marrow', 3500)
--;


--	INSERT INTO tbl_habitat
--	(habitat_type, habitat_cost)
--	VALUES
--	('tundra', 40000),
--	('grassy knoll with trees', 12000),
--	('10 ft pond and rocks', 30000),
--	('icy aquarium with snowy facade', 50000),
--	('short grass, shade and moat', 50000),
--	('netted forest atrium', 10000),
--	('jungle vines and winding branches', 15000),
--	('cliff with shaded cave', 15000)
--;

--SELECT * FROM tbl_habitat

--INSERT INTO tbl_specialist
--(specialist_fname, specialist_lname, specialist_contact)
--VALUES 
--('margaret', 'nguyen', '384-576-2899'),
--('mary', 'fischer', '384-784-4856'),
--('arnold', 'holden', '385-475-3944'),
--('kem', 'byesan', '384-485-4855'),
--('delmonte', 'fyedo', '768-288-3749')
--;
--SELECT * FROM tbl_specialist;


--CREATE TABLE tbl_species (
--	species_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1),
--	species_name VARCHAR(50) NOT NULL,
--	species_animalia INT NOT NULL CONSTRAINT fk_animalia_id FOREIGN KEY REFERENCES tbl_animalia(animalia_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	species_class INT NOT NULL CONSTRAINT fk_class_id FOREIGN KEY REFERENCES tbl_class(class_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	species_order INT NOT NULL CONSTRAINT fk_order_id FOREIGN KEY REFERENCES tbl_order(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	species_habitat INT NOT NULL CONSTRAINT fk_habitat_id FOREIGN KEY REFERENCES tbl_habitat(habitat_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	species_nutrition INT NOT NULL CONSTRAINT fk_nutrition_id FOREIGN KEY REFERENCES tbl_nutrition(nutrition_id) ON UPDATE CASCADE ON DELETE CASCADE,
--	species_care VARCHAR(50) NOT NULL CONSTRAINT fk_care_id FOREIGN KEY REFERENCES tbl_care(care_id) ON UPDATE CASCADE ON DELETE CASCADE
--);

--INSERT INTO tbl_species
--	(species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care)
--	VALUES
--	('brown bear', 1, 102, 3, 5007, 2200, 'care_1'),
--	('jaguar', 1, 102, 1, 5007, 2200, 'care_4'),
--	('penguin', 1, 100, 1, 5003, 2200, 'care_6'),
--	('ghost bat', 1, 102, 1, 5007, 2204, 'care_2'),
--	('chicken', 1, 100, 3, 5001, 2205, 'care_0'),
--	('panda', 1, 102, 3, 5006, 2202, 'care_4'),
--	('bobcat', 1, 102, 1, 5001, 2204, 'care_5'),
--	('grey wolf', 1, 102, 1, 5001, 2201, 'care_4')
--;

--SELECT * FROM tbl_species;