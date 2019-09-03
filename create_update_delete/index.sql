-- command is actually INSERT TO 
-- Tablename after the command
-- Only one table allowed
-- List of columns in parenthesis
-- VALUES keyword
-- List of values in parenthesis
-- Values and columns must be equal

INSERT INTO person
p
(first_name,
last_name,
contact_number
)
VALUES
('Michael', 'Mickey', '+234567890');


-- UPDATE 
-- Modifies one or more columns in a single table

UPDATE 
person
SET
p.first_name = 'indigener'
WHERE e.email_address_id = 5;


-- DELETE
DELETE
FROM person p 
WHERE p.person_id = 5