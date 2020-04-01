USE db_zoo
GO

SELECT * FROM tbl_habitat

SELECT species_name, species_order
FROM tbl_species
WHERE species_order = 3;

SELECT nutrition_type, nutrition_cost
FROM tbl_nutrition
WHERE nutrition_cost < 600.00;

SELECT * FROM tbl_nutrition WHERE nutrition_id BETWEEN 2202 AND 2206;

SELECT species_name AS "Species Name:", nutrition_type AS "Nutrition Type:"
FROM tbl_nutrition, tbl_species 
WHERE species_name = nutrition_type;


SELECT tbl_specialist.specialist_contact, tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_species.species_name, tbl_species.species_care
FROM tbl_specialist, tbl_species
WHERE tbl_species.species_care=tbl_specialist.specialist_fname;

SELECT * FROM tbl_species