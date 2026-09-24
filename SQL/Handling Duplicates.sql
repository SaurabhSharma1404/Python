-- =========================================================
-- HANDLING DUPLICATE RECORDS
-- =========================================================

/*
Duplicate records are common in real-world datasets.

For example:
John Smith appears more than once.
Jane Doe appears more than once.

We can:
1. Find duplicate values
2. Find complete duplicate rows
3. Show unique values using DISTINCT
4. Remove duplicate rows from a result
5. Delete duplicate records when needed
*/


-- =========================================================
-- 1. CREATE TABLE
-- =========================================================

CREATE TABLE customer_data (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(50)
);


-- Insert sample data immediately after creating the table.

INSERT INTO customer_data
(id, name, email, city)
VALUES
(1, 'John Smith', 'john.smith@example.com', 'New York'),
(2, 'Jane Doe', 'jane.doe@example.com', 'London'),
(3, 'John Smith', 'john.smith@example.com', 'Los Angeles'),
(4, 'Sarah Johnson', 'sarah.johnson@example.com', 'New York'),
(5, 'Jane Doe', 'jane.doe@example.com', 'New York');


-- View the complete table.

SELECT *
FROM customer_data;


-- =========================================================
-- 2. FIND DUPLICATE NAMES
-- =========================================================

/*
GROUP BY puts the same names together.

COUNT(*) counts how many times each name appears.

HAVING COUNT(*) > 1 keeps only names that appear
more than once.
*/

SELECT
    name,
    COUNT(*) AS name_count
FROM customer_data
GROUP BY name
HAVING COUNT(*) > 1;


-- Result:
-- John Smith → 2
-- Jane Doe   → 2


-- =========================================================
-- 3. FIND DUPLICATE CITIES
-- =========================================================

/*
Find cities that appear more than once.
*/

SELECT
    city,
    COUNT(*) AS city_count
FROM customer_data
GROUP BY city
HAVING COUNT(*) > 1;


-- Result:
-- New York → 3


-- =========================================================
-- 4. FIND DUPLICATE EMAILS
-- =========================================================

/*
Email is often a better column for identifying
duplicate customers because an email is normally
expected to belong to one customer.
*/

SELECT
    email,
    COUNT(*) AS email_count
FROM customer_data
GROUP BY email
HAVING COUNT(*) > 1;


-- =========================================================
-- 5. FIND DUPLICATE COMBINATIONS
-- =========================================================

/*
Sometimes we want to find duplicates based on
more than one column.

Here we check:
name + email

Both values must be the same.
*/

SELECT
    name,
    email,
    COUNT(*) AS duplicate_count
FROM customer_data
GROUP BY name, email
HAVING COUNT(*) > 1;


-- =========================================================
-- 6. DISTINCT
-- =========================================================

/*
DISTINCT removes duplicate values from the result.

IMPORTANT:
DISTINCT does NOT delete anything from the table.
It only removes duplicates from the query result.
*/


-- Show unique customer names.

SELECT DISTINCT name
FROM customer_data;


-- Show unique cities.

SELECT DISTINCT city
FROM customer_data;


-- Show unique emails.

SELECT DISTINCT email
FROM customer_data;


-- =========================================================
-- 7. DISTINCT ON MULTIPLE COLUMNS
-- =========================================================

/*
DISTINCT can also be used with multiple columns.

The combination of name + city must be unique.
*/

SELECT DISTINCT
    name,
    city
FROM customer_data;


-- =========================================================
-- 8. FIND COMPLETE ROWS THAT HAVE DUPLICATE NAMES
-- =========================================================

/*
GROUP BY tells us which values are duplicated.

But sometimes we want to see the COMPLETE records
that contain those duplicate values.

We can use a subquery.
*/

SELECT *
FROM customer_data
WHERE name IN (
    SELECT name
    FROM customer_data
    GROUP BY name
    HAVING COUNT(*) > 1
);


-- =========================================================
-- 9. FIND COMPLETE ROWS THAT HAVE DUPLICATE EMAILS
-- =========================================================

SELECT *
FROM customer_data
WHERE email IN (
    SELECT email
    FROM customer_data
    GROUP BY email
    HAVING COUNT(*) > 1
);


-- =========================================================
-- 10. FIND DUPLICATES USING ROW_NUMBER()
-- =========================================================

/*
ROW_NUMBER() gives a number to each row inside
a group of duplicate values.

PARTITION BY email means:
"Create a separate numbering group for each email."

The first occurrence gets:
1

The second occurrence gets:
2

The third occurrence gets:
3
*/

SELECT
    id,
    name,
    email,
    city,
    ROW_NUMBER() OVER (
        PARTITION BY email
        ORDER BY id
    ) AS row_number
FROM customer_data;


-- =========================================================
-- 11. IDENTIFY DUPLICATE RECORDS USING ROW_NUMBER()
-- =========================================================

/*
Now we can put the previous query into a subquery.

row_number = 1
→ Keep the first record.

row_number > 1
→ These are duplicate records.
*/

SELECT *
FROM (
    SELECT
        id,
        name,
        email,
        city,
        ROW_NUMBER() OVER (
            PARTITION BY email
            ORDER BY id
        ) AS row_number
    FROM customer_data
) AS duplicates
WHERE row_number > 1;


-- =========================================================
-- 12. KEEP ONLY ONE RECORD FROM EACH EMAIL
-- =========================================================

/*
This returns one customer record for each email.

The first row for every email is kept.
*/

SELECT
    id,
    name,
    email,
    city
FROM (
    SELECT
        id,
        name,
        email,
        city,
        ROW_NUMBER() OVER (
            PARTITION BY email
            ORDER BY id
        ) AS row_number
    FROM customer_data
) AS duplicates
WHERE row_number = 1;


-- =========================================================
-- 13. DELETE DUPLICATE RECORDS
-- =========================================================

/*
WARNING:
DELETE actually removes data from the table.

Always check the rows first with SELECT before
running DELETE.

Here:
row_number = 1 → keep
row_number > 1 → delete
*/

DELETE FROM customer_data
WHERE id IN (
    SELECT id
    FROM (
        SELECT
            id,
            ROW_NUMBER() OVER (
                PARTITION BY email
                ORDER BY id
            ) AS row_number
        FROM customer_data
    ) AS duplicates
    WHERE row_number > 1
);


-- =========================================================
-- 14. CHECK THE TABLE AFTER DELETING DUPLICATES
-- =========================================================

SELECT *
FROM customer_data;


-- =========================================================
-- 15. UNION
-- =========================================================

/*
UNION combines the results of two SELECT queries
and removes duplicate rows.

IMPORTANT:
UNION is a SET OPERATION.

It is not normally used to delete duplicate records
from a table.
*/


-- Example:
-- Get all cities from two different queries.

SELECT city
FROM customer_data
WHERE city = 'New York'

UNION

SELECT city
FROM customer_data
WHERE city = 'London';


-- UNION removes duplicate "New York" rows
-- from the final result.


-- =========================================================
-- 16. UNION ALL
-- =========================================================

/*
UNION ALL also combines two SELECT results,
but it keeps duplicates.
*/

SELECT city
FROM customer_data
WHERE city = 'New York'

UNION ALL

SELECT city
FROM customer_data
WHERE city = 'New York';


-- With UNION:
-- New York appears once.

-- With UNION ALL:
-- New York appears multiple times.


-- =========================================================
-- DUPLICATE HANDLING CHEAT SHEET
-- =========================================================

/*
1. FIND DUPLICATE VALUES
------------------------

SELECT email, COUNT(*)
FROM customer_data
GROUP BY email
HAVING COUNT(*) > 1;


2. SHOW UNIQUE VALUES
---------------------

SELECT DISTINCT email
FROM customer_data;


3. FIND COMPLETE DUPLICATE RECORDS
----------------------------------

SELECT *
FROM customer_data
WHERE email IN (
    SELECT email
    FROM customer_data
    GROUP BY email
    HAVING COUNT(*) > 1
);


4. IDENTIFY DUPLICATES WITH ROW_NUMBER
---------------------------------------

ROW_NUMBER() OVER (
    PARTITION BY email
    ORDER BY id
)


5. FIND DUPLICATE ROWS
----------------------

WHERE row_number > 1


6. KEEP ONE ROW
---------------

WHERE row_number = 1


7. UNION
--------

Combines results
+
Removes duplicate rows


8. UNION ALL
------------

Combines results
+
Keeps duplicate rows


9. DELETE DUPLICATES
--------------------

Use ROW_NUMBER()
to identify which records
should be removed.

IMPORTANT:
Always SELECT first.
Then DELETE.


========================================================
IMPORTANT DIFFERENCE
========================================================

GROUP BY
---------
Used to group values and find duplicates.

DISTINCT
--------
Used to show unique values in the result.

ROW_NUMBER()
------------
Used to identify individual duplicate rows.

UNION
-----
Combines two result sets and removes duplicate rows.

UNION ALL
---------
Combines two result sets and keeps duplicates.

DELETE
------
Actually removes records from the table.


========================================================
END OF DUPLICATE RECORD HANDLING
========================================================