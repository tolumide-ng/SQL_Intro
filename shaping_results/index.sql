SELECT p.person_first_name, p.person_last_name
FROM person p
ORDER BY p.person_last_name;

-- SET 
-- Computes new values in place of column values 
-- Use in place of columns in select clause
-- count, max, min, avg, sum

-- what is the total number of times I have contacted my contacts
SELECT SUM(p.contacted_number)
FROM person p;

-- what is the count of unique first names among my contacts
-- set functions with qualifiers
SELECT COUNT(DISTINCT p.first_name)
FROM person p;



-- GROUP BY
-- Allows multiple columns with a set function
-- Breaks result set into subset
-- Runs set function against each subset

SELECT COUNT(p.first_name), p.first_name
FROM Person p
WHERE p.first_name = 4
GROUP BY p.first_name;




SELECT COUNT(p.first_name),
    p.last_name
FROM person p
GROUP BY p.first_name
HAVING p.first_name = 'Jon';



SELECT COUNT(p.first_name) as first_name_count,
    p.last_name
FROM person p
GROUP BY p.first_name
HAVING irst_name_count > 1;