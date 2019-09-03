USE contacts

-- CROSS JOINS
-- DO NOT USE THIS AT HOME OR WORK

-- This is bad practise as there is no where clause in this sql query
SELECT
    p.last_name,
    p.first_name,
    e.email_address
FROM person p, email_address e


-- INNER JOIN
-- Emphaizes the relational nature of database
-- Matches column in first table to the second
-- Primary key to foerign key is most common
-- Inner join does not deal with null values

-- what are all my contact email addresses
SELECT
    p.first_name,
    p.last_name,
    e.email_address
FROM person p
    INNER JOIN email_address e
    ON p.person_id = e.email_address_person_id



-- OUTER JOIN
-- Outer join works even when there is no match
-- full outer join is returned in both columns

-- LEFT OUTER JOIN

-- What are my contacts and email addresses, including those I don't have an email for?

SELECT p.first_name, p.last_name, e.email_address
FROM person p
    LEFT OUTER JOIN
    email_address
    ON p.person_id = e.email_address


-- FULL OUTER JOIN
-- DOES NOT WORK IN MySQL, use UNION DISTINCT instead


-- SELF JOIN
-- same table on the left and right side of the join