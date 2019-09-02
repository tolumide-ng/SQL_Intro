-- The AND Keyword combines two or more expressons and returns rows that are true for all the listed expressionsa

-- If the row is false for any of the expressions, then the row is excluded


Use Contacts;

SELECT p.first_name, p.last_name
FROM person p
WHERE p.first_name = 'Jon'
    AND p.birthdate > '12/31/1965';

-- The OR Keyword combines two or more expressons
-- If the row satisfies one or more of the expressions, then the row is included else the row would not be included

Use Contacts;

SELECT p.first_name, p.last_name
FROM person p
WHERE p.first_name = 'Jon'
    OR p.person_contacted_number > 5;


-- Other  Boolean Operators
-- BETWEEN, LIKE, IN, IS, IS NOT


-- BETWEEN operator acts on a column value and two additional values

-- who are all the people in my contact list that I have contacted at least once but not more than 20 times?
SELECT p.first_name, p.last_name
FROM person p
WHERE p.contacted 
BETWEEN 1 AND 20;


-- LIKE 
-- A fuzzy version of =
-- Where the person_first_name starts with j

SELECT p.person_first_name, p.person_last_name
FROM person p
WHERE p.person_first_name
LIKE 'J%'


-- IN
-- A multi-value = operator
-- select the first and lastname in the table where the first name on the row contains 'Jon' or 'Fritz'


SELECT p.first_name, p.last_name
FROM person p
WHERE p.first_name
IN ('Jon', 'Frtiz')


-- IS
-- Like a equals operator
-- But just for values that might be null

-- for example, who are all the people in my contacts table that do not have a lastname 

SELECT p.first_name, p.last_name
FROM person p
WHERE p.last_name
IS NULL;


-- IS NOT 
-- that is, not equal to null

SELECT p.first_name, p.last_name
FROM person p
WHERE p.last_name IS NOT NULL;