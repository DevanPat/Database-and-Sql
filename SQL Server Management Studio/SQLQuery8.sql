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
FROM tbl_nutrition 
INNER JOIN tbl_species
ON species_nutrition = nutrition_id


SELECT specialist_contact, specialist_fname, specialist_lname, species_name, species_care
FROM tbl_specialist
INNER JOIN tbl_species ON species_care = 'care_6'
WHERE species_name = 'penguin'

