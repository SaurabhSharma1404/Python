-- ============================================================
-- POSTGRESQL STRING FUNCTIONS
-- Complete Notes + Real Table Practice
-- ============================================================
-- TABLE OF CONTENTS
-- 1. Create practice table
-- 2. LENGTH
-- 3. LOWER
-- 4. UPPER
-- 5. INITCAP
-- 6. TRIM
-- 7. LTRIM
-- 8. RTRIM
-- 9. CONCAT
-- 10. || operator
-- 11. CONCAT_WS
-- 12. LEFT
-- 13. RIGHT
-- 14. SUBSTRING
-- 15. REPLACE
-- 16. POSITION
-- 17. STRPOS
-- 18. REVERSE
-- 19. REPEAT
-- 20. LPAD
-- 21. RPAD
-- 22. SPLIT_PART
-- 23. STRING_AGG
-- 24. ASCII
-- 25. CHR
-- 26. LIKE
-- 27. ILIKE
-- 28. LIKE wildcards % and _
-- 29. Combining string functions
-- 30. Real-world examples
-- 31. Practice questions
-- ============================================================


-- ============================================================
-- 1. CREATE A REAL PRACTICE TABLE
-- ============================================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    phone VARCHAR(20),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'John Smith', 'john.smith@gmail.com', 'New York', '9876543210', 'IT'),
(2, 'Jane Doe', 'jane.doe@yahoo.com', 'London', '8765432101', 'HR'),
(3, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'Delhi', '7654321098', 'IT'),
(4, 'Priya Singh', 'priya.singh@hotmail.com', 'Mumbai', '6543210987', 'Finance'),
(5, 'Amit Kumar', 'amit.kumar@gmail.com', 'Chandigarh', '5432109876', 'Sales'),
(6, 'neha verma', 'neha.verma@gmail.com', 'Delhi', '9123456780', 'HR'),
(7, '  Rohan Mehta  ', 'rohan.mehta@yahoo.com', 'Pune', '9988776655', 'Sales'),
(8, 'ANKIT SHARMA', 'ankit.sharma@gmail.com', 'Jaipur', '8877665544', 'IT'),
(9, 'Pooja Gupta', 'pooja.gupta@hotmail.com', 'Delhi', '7766554433', 'Finance'),
(10, 'Arjun Malhotra', 'arjun.malhotra@gmail.com', 'Mumbai', '6655443322', 'IT');


-- Check the table
SELECT *
FROM employees;


-- ============================================================
-- 2. LENGTH()
-- ============================================================
-- LENGTH() counts the number of characters.
--
-- Syntax:
-- LENGTH(column_name)
--
-- REAL TABLE EXAMPLE:
-- Show each employee and the number of characters in their name.

SELECT
    name,
    LENGTH(name) AS name_length
FROM employees;

-- Important:
-- Spaces are also characters.
-- Therefore 'John Smith' has 10 characters including the space.


-- ============================================================
-- 3. LOWER()
-- ============================================================
-- LOWER() converts text to lowercase.

SELECT
    name,
    LOWER(name) AS lowercase_name
FROM employees;


-- REAL-WORLD USE:
-- Standardize names before displaying/storing them.

SELECT
    LOWER(email) AS standardized_email
FROM employees;


-- ============================================================
-- 4. UPPER()
-- ============================================================
-- UPPER() converts text to uppercase.

SELECT
    name,
    UPPER(name) AS uppercase_name
FROM employees;


-- REAL-WORLD USE:
-- Display department names in uppercase.

SELECT
    name,
    UPPER(department) AS department_upper
FROM employees;


-- ============================================================
-- 5. INITCAP()
-- ============================================================
-- INITCAP() makes the first letter of each word uppercase.

SELECT
    name,
    INITCAP(name) AS proper_name
FROM employees;

-- Example:
-- 'neha verma'     -> 'Neha Verma'
-- 'ANKIT SHARMA'   -> 'Ankit Sharma'


-- ============================================================
-- 6. TRIM()
-- ============================================================
-- TRIM() removes spaces from the beginning and end.
--
-- Very useful when dirty data contains unnecessary spaces.

SELECT
    name,
    TRIM(name) AS cleaned_name
FROM employees;

-- Rohan's original value contains spaces:
-- '  Rohan Mehta  '
--
-- TRIM(name) gives:
-- 'Rohan Mehta'


-- REAL-WORLD DATA CLEANING:
-- Find names where spaces exist at the beginning/end.

SELECT
    id,
    name,
    TRIM(name) AS cleaned_name
FROM employees
WHERE name <> TRIM(name);


-- ============================================================
-- 7. LTRIM()
-- ============================================================
-- LTRIM() removes spaces from the LEFT side.

SELECT
    name,
    LTRIM(name) AS left_cleaned_name
FROM employees;


-- ============================================================
-- 8. RTRIM()
-- ============================================================
-- RTRIM() removes spaces from the RIGHT side.

SELECT
    name,
    RTRIM(name) AS right_cleaned_name
FROM employees;


-- ============================================================
-- 9. CONCAT()
-- ============================================================
-- CONCAT() joins multiple values together.

SELECT
    name,
    city,
    CONCAT(name, ' - ', city) AS employee_location
FROM employees;

-- Example:
-- Rahul Sharma - Delhi
-- Priya Singh - Mumbai


-- REAL-WORLD USE:
-- Create a readable employee profile.

SELECT
    CONCAT(
        'Employee: ', name,
        ' | City: ', city,
        ' | Department: ', department
    ) AS employee_profile
FROM employees;


-- ============================================================
-- 10. || STRING CONCATENATION OPERATOR
-- ============================================================
-- PostgreSQL also allows || to join strings.

SELECT
    name || ' lives in ' || city AS employee_location
FROM employees;

-- CONCAT() and || are both used to join text.


-- ============================================================
-- 11. CONCAT_WS()
-- ============================================================
-- WS = With Separator
--
-- Syntax:
-- CONCAT_WS(separator, value1, value2, ...)

SELECT
    CONCAT_WS(', ', name, city, department) AS employee_details
FROM employees;

-- Example:
-- Rahul Sharma, Delhi, IT


-- ============================================================
-- 12. LEFT()
-- ============================================================
-- LEFT() returns characters from the LEFT side.
--
-- Syntax:
-- LEFT(text, number_of_characters)

SELECT
    name,
    LEFT(name, 5) AS first_5_characters
FROM employees;


-- REAL-WORLD USE:
-- Get the first 3 digits of a phone number.

SELECT
    name,
    phone,
    LEFT(phone, 3) AS phone_prefix
FROM employees;


-- ============================================================
-- 13. RIGHT()
-- ============================================================
-- RIGHT() returns characters from the RIGHT side.

SELECT
    name,
    phone,
    RIGHT(phone, 4) AS last_4_digits
FROM employees;


-- REAL-WORLD USE:
-- Mask a phone number except its last 4 digits.

SELECT
    name,
    'XXXXXX' || RIGHT(phone, 4) AS masked_phone
FROM employees;


-- ============================================================
-- 14. SUBSTRING()
-- ============================================================
-- SUBSTRING() extracts part of a string.
--
-- Syntax:
-- SUBSTRING(text FROM start FOR count)

SELECT
    name,
    SUBSTRING(name FROM 1 FOR 5) AS first_5_characters
FROM employees;


-- REAL-WORLD USE:
-- Extract the first 3 characters of every city.

SELECT
    city,
    SUBSTRING(city FROM 1 FOR 3) AS city_code
FROM employees;


-- ============================================================
-- 15. REPLACE()
-- ============================================================
-- REPLACE() replaces one piece of text with another.
--
-- Syntax:
-- REPLACE(column, old_text, new_text)


-- NOT just a fixed string:
-- We are using the REAL TABLE here.

SELECT
    name,
    email,
    REPLACE(email, 'gmail.com', 'company.com') AS new_email
FROM employees;


-- REAL-WORLD USE:
-- Replace Delhi with New Delhi in the output.

SELECT
    name,
    city,
    REPLACE(city, 'Delhi', 'New Delhi') AS updated_city
FROM employees;


-- Replace spaces in names with underscores.

SELECT
    name,
    REPLACE(TRIM(name), ' ', '_') AS username_style
FROM employees;


-- IMPORTANT:
-- This SELECT does NOT permanently change the table.
-- It only changes the displayed result.
--
-- To permanently update data, use UPDATE:
--
-- UPDATE employees
-- SET city = REPLACE(city, 'Delhi', 'New Delhi')
-- WHERE city = 'Delhi';
--
-- Always use WHERE carefully with UPDATE.


-- ============================================================
-- 16. POSITION()
-- ============================================================
-- POSITION() finds where text starts.

SELECT
    name,
    POSITION('a' IN LOWER(name)) AS position_of_a
FROM employees;

-- LOWER(name) is used so that A and a are treated the same.


-- REAL-WORLD USE:
-- Find employees whose name contains 'sharma'
-- and show where 'sharma' starts.

SELECT
    name,
    POSITION('sharma' IN LOWER(name)) AS sharma_position
FROM employees
WHERE LOWER(name) LIKE '%sharma%';


-- ============================================================
-- 17. STRPOS()
-- ============================================================
-- STRPOS() also finds the position of text.
--
-- Syntax:
-- STRPOS(text, search_text)

SELECT
    name,
    STRPOS(LOWER(name), 'a') AS position_of_a
FROM employees;


-- ============================================================
-- 18. REVERSE()
-- ============================================================
-- REVERSE() reverses text.

SELECT
    name,
    REVERSE(name) AS reversed_name
FROM employees;


-- REAL-WORLD USE:
-- Reverse phone numbers.

SELECT
    name,
    phone,
    REVERSE(phone) AS reversed_phone
FROM employees;


-- ============================================================
-- 19. REPEAT()
-- ============================================================
-- REPEAT() repeats text a specified number of times.
--
-- Syntax:
-- REPEAT(text, number)

SELECT
    name,
    REPEAT('*', 5) AS stars
FROM employees;


-- REAL-WORLD USE:
-- Create a simple separator for every employee.

SELECT
    name,
    REPEAT('-', 20) AS separator
FROM employees;


-- ============================================================
-- 20. LPAD()
-- ============================================================
-- LPAD() adds characters to the LEFT until a target length is reached.
--
-- Syntax:
-- LPAD(text, final_length, fill_text)

SELECT
    id,
    LPAD(id::TEXT, 5, '0') AS formatted_employee_id
FROM employees;

-- Example:
-- 1  -> 00001
-- 10 -> 00010


-- ============================================================
-- 21. RPAD()
-- ============================================================
-- RPAD() adds characters to the RIGHT.

SELECT
    name,
    RPAD(name, 20, '.') AS padded_name
FROM employees;


-- ============================================================
-- 22. SPLIT_PART()
-- ============================================================
-- SPLIT_PART() splits text using a separator
-- and returns the requested part.
--
-- Syntax:
-- SPLIT_PART(text, separator, part_number)


-- REAL TABLE:
-- Get username from email.

SELECT
    email,
    SPLIT_PART(email, '@', 1) AS username
FROM employees;


-- REAL TABLE:
-- Get email domain.

SELECT
    email,
    SPLIT_PART(email, '@', 2) AS email_domain
FROM employees;


-- REAL TABLE:
-- Get first name from full name.
--
-- This works because our names use a space between first and last name.

SELECT
    name,
    SPLIT_PART(TRIM(name), ' ', 1) AS first_name
FROM employees;


-- REAL TABLE:
-- Get last name.

SELECT
    name,
    SPLIT_PART(TRIM(name), ' ', 2) AS last_name
FROM employees;


-- ============================================================
-- 23. STRING_AGG()
-- ============================================================
-- STRING_AGG() combines values from multiple rows into one string.

SELECT
    STRING_AGG(name, ', ') AS all_employee_names
FROM employees;


-- REAL-WORLD USE:
-- List employees department-wise.

SELECT
    department,
    STRING_AGG(TRIM(name), ', ') AS employees
FROM employees
GROUP BY department;


-- REAL-WORLD USE:
-- List all cities department-wise.

SELECT
    department,
    STRING_AGG(DISTINCT city, ', ') AS cities
FROM employees
GROUP BY department;


-- ============================================================
-- 24. ASCII()
-- ============================================================
-- ASCII() returns the ASCII number of the first character.

SELECT
    name,
    ASCII(LEFT(TRIM(name), 1)) AS first_character_ascii
FROM employees;


-- ============================================================
-- 25. CHR()
-- ============================================================
-- CHR() converts an ASCII number into a character.

SELECT
    id,
    CHR(64 + id) AS alphabet_code
FROM employees
WHERE id <= 10;


-- ============================================================
-- 26. LIKE
-- ============================================================
-- LIKE is NOT exactly a string function.
-- It is a pattern-matching operator.
--
-- % = zero or more characters
-- _ = exactly one character
--
-- LIKE is commonly used with WHERE.


-- Names that START with 'Rahul'

SELECT *
FROM employees
WHERE name LIKE 'Rahul%';


-- Names that END with 'Sharma'

SELECT *
FROM employees
WHERE name LIKE '%Sharma';


-- Names that CONTAIN 'Sharma'

SELECT *
FROM employees
WHERE name LIKE '%Sharma%';


-- Emails that contain gmail

SELECT *
FROM employees
WHERE email LIKE '%gmail%';


-- Cities starting with D

SELECT *
FROM employees
WHERE city LIKE 'D%';


-- ============================================================
-- 27. ILIKE
-- ============================================================
-- ILIKE is PostgreSQL's case-insensitive version of LIKE.
--
-- LIKE:
-- 'rahul%' does NOT normally match 'Rahul Sharma'
--
-- ILIKE:
-- 'rahul%' DOES match 'Rahul Sharma'


SELECT *
FROM employees
WHERE name ILIKE 'rahul%';


-- Find all names containing 'SHARMA',
-- regardless of upper/lower case.

SELECT *
FROM employees
WHERE name ILIKE '%SHARMA%';


-- Find Gmail users regardless of case.

SELECT *
FROM employees
WHERE email ILIKE '%GMAIL%';


-- ============================================================
-- 28. LIKE WILDCARDS
-- ============================================================

-- % means ZERO OR MORE characters.

SELECT *
FROM employees
WHERE name LIKE 'A%';

-- Means:
-- A
-- Amit
-- Ankit
-- Arjun
-- etc.


-- _ means EXACTLY ONE character.

SELECT *
FROM employees
WHERE name LIKE 'A_it%';

-- A_it:
-- A + exactly one character + it
--
-- For example:
-- Amit starts with A + m + it


-- Find names where the second character is 'a'.

SELECT *
FROM employees
WHERE name ILIKE '_a%';


-- Find emails ending in gmail.com

SELECT *
FROM employees
WHERE email ILIKE '%@gmail.com';


-- ============================================================
-- 29. COMBINING STRING FUNCTIONS
-- ============================================================


-- LOWER + LIKE
-- Find IT employees whose name contains 'a'.

SELECT
    name,
    department
FROM employees
WHERE department = 'IT'
  AND LOWER(name) LIKE '%a%';


-- TRIM + INITCAP
-- Clean and properly capitalize names.

SELECT
    name,
    INITCAP(TRIM(name)) AS cleaned_name
FROM employees;


-- SPLIT_PART + LOWER
-- Extract email domain and make it lowercase.

SELECT
    email,
    LOWER(SPLIT_PART(email, '@', 2)) AS domain
FROM employees;


-- CONCAT + UPPER
-- Create an employee label.

SELECT
    UPPER(CONCAT(TRIM(name), ' - ', department)) AS employee_label
FROM employees;


-- LEFT + UPPER
-- Create a 3-character uppercase city code.

SELECT
    city,
    UPPER(LEFT(city, 3)) AS city_code
FROM employees;


-- REPLACE + LOWER
-- Convert an email into a username-style value.

SELECT
    email,
    LOWER(REPLACE(SPLIT_PART(email, '@', 1), '.', '_')) AS username
FROM employees;


-- ============================================================
-- 30. REAL-WORLD EXAMPLES
-- ============================================================


-- EXAMPLE 1:
-- Create a clean employee directory.

SELECT
    id,
    INITCAP(TRIM(name)) AS employee_name,
    LOWER(email) AS email,
    INITCAP(city) AS city,
    INITCAP(department) AS department
FROM employees;


-- EXAMPLE 2:
-- Mask phone numbers.

SELECT
    name,
    'XXXXXX' || RIGHT(phone, 4) AS masked_phone
FROM employees;


-- EXAMPLE 3:
-- Extract username and domain from email.

SELECT
    name,
    SPLIT_PART(email, '@', 1) AS username,
    SPLIT_PART(email, '@', 2) AS domain
FROM employees;


-- EXAMPLE 4:
-- Find employees using Gmail.

SELECT
    name,
    email
FROM employees
WHERE email ILIKE '%@gmail.com';


-- EXAMPLE 5:
-- Find employees whose name contains 'sharma'.

SELECT
    name,
    email,
    city
FROM employees
WHERE name ILIKE '%sharma%';


-- EXAMPLE 6:
-- Create an employee ID such as EMP-00001.

SELECT
    'EMP-' || LPAD(id::TEXT, 5, '0') AS employee_code,
    name
FROM employees;


-- EXAMPLE 7:
-- Create a display name.

SELECT
    CONCAT_WS(' | ',
        INITCAP(TRIM(name)),
        LOWER(email),
        INITCAP(city),
        UPPER(department)
    ) AS employee_display
FROM employees;


-- EXAMPLE 8:
-- Find employees whose first name starts with 'A'.

SELECT
    name
FROM employees
WHERE SPLIT_PART(TRIM(name), ' ', 1) ILIKE 'A%';


-- EXAMPLE 9:
-- Find employees with names longer than 10 characters.

SELECT
    name,
    LENGTH(TRIM(name)) AS name_length
FROM employees
WHERE LENGTH(TRIM(name)) > 10;


-- EXAMPLE 10:
-- Create a simple username from employee name.

SELECT
    name,
    LOWER(REPLACE(TRIM(name), ' ', '.')) AS username
FROM employees;


-- ============================================================
-- 31. UPDATE USING STRING FUNCTIONS
-- ============================================================
-- SELECT only changes the displayed result.
--
-- UPDATE permanently changes table data.
--
-- ALWAYS use WHERE when you only want certain rows.


-- Example:
-- Permanently clean Rohan's name.

-- UPDATE employees
-- SET name = TRIM(name)
-- WHERE id = 7;


-- Example:
-- Permanently convert Delhi to New Delhi.

-- UPDATE employees
-- SET city = REPLACE(city, 'Delhi', 'New Delhi')
-- WHERE city = 'Delhi';


-- Example:
-- Permanently standardize emails to lowercase.

-- UPDATE employees
-- SET email = LOWER(email);


-- ============================================================
-- 32. QUICK CHEAT SHEET
-- ============================================================

-- LENGTH(text)
-- Count characters

-- LOWER(text)
-- Convert to lowercase

-- UPPER(text)
-- Convert to uppercase

-- INITCAP(text)
-- First letter of each word uppercase

-- TRIM(text)
-- Remove spaces from both ends

-- LTRIM(text)
-- Remove spaces from left

-- RTRIM(text)
-- Remove spaces from right

-- CONCAT(a, b, c)
-- Join strings

-- a || b
-- Join strings

-- CONCAT_WS(separator, a, b)
-- Join strings with separator

-- LEFT(text, n)
-- First n characters

-- RIGHT(text, n)
-- Last n characters

-- SUBSTRING(text FROM start FOR count)
-- Extract part of text

-- REPLACE(text, old, new)
-- Replace text

-- POSITION(search IN text)
-- Find position

-- STRPOS(text, search)
-- Find position

-- REVERSE(text)
-- Reverse text

-- REPEAT(text, n)
-- Repeat text

-- LPAD(text, length, fill)
-- Add characters on left

-- RPAD(text, length, fill)
-- Add characters on right

-- SPLIT_PART(text, separator, part)
-- Split and return a part

-- STRING_AGG(column, separator)
-- Combine multiple rows

-- ASCII(text)
-- Character -> ASCII number

-- CHR(number)
-- ASCII number -> character

-- LIKE
-- Case-sensitive pattern matching

-- ILIKE
-- Case-insensitive pattern matching


-- ============================================================
-- 33. PRACTICE QUESTIONS
-- ============================================================

-- BEGINNER
-- 1. Display all names in uppercase.
-- 2. Display all emails in lowercase.
-- 3. Display name and name length.
-- 4. Display name and city joined with ' - '.
-- 5. Display first 4 characters of each name.
-- 6. Display last 4 digits of each phone.
-- 7. Display trimmed names.
-- 8. Display proper-case names using INITCAP().
-- 9. Extract username from every email.
-- 10. Extract domain from every email.

-- LIKE / ILIKE
-- 11. Find employees whose name starts with 'A'.
-- 12. Find employees whose name ends with 'a'.
-- 13. Find employees whose name contains 'sharma'.
-- 14. Find employees whose email contains 'gmail'.
-- 15. Find employees from cities starting with 'M'.
-- 16. Find employees whose name has 'a' as the second character.
-- 17. Find Gmail employees using ILIKE.
-- 18. Find employees whose department starts with 'S'.

-- INTERMEDIATE
-- 19. Create employee code: EMP-00001, EMP-00002, etc.
-- 20. Mask phone numbers except the last 4 digits.
-- 21. Create a username from the name:
--     'Rahul Sharma' -> 'rahul.sharma'
-- 22. Extract first name.
-- 23. Extract last name.
-- 24. Find names longer than 10 characters.
-- 25. Replace 'gmail.com' with 'company.com' in the SELECT output.
-- 26. Create a display string:
--     Name | City | Department
-- 27. List employees department-wise using STRING_AGG().
-- 28. Create a 3-character uppercase city code.
-- 29. Find the position of 'a' in each name.
-- 30. Reverse each employee's phone number.


-- ============================================================
-- END OF NOTES
-- ============================================================
