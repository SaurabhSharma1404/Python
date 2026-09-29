-- ============================================================
-- PostgreSQL DATE & TIME FUNCTIONS
-- Complete Notes + Practice Dataset + Practice Questions
-- ============================================================

-- ============================================================
-- 1. DATE/TIME DATA TYPES
-- ============================================================

-- DATE
SELECT DATE '2026-09-29';

-- TIME
SELECT TIME '14:30:25';

-- TIMESTAMP
SELECT TIMESTAMP '2026-09-29 14:30:25';

-- TIMESTAMP WITH TIME ZONE
SELECT TIMESTAMPTZ '2026-09-29 14:30:25+05:30';

-- INTERVAL
SELECT INTERVAL '5 days';


-- ============================================================
-- 2. CURRENT DATE/TIME FUNCTIONS
-- ============================================================

-- Today's date
SELECT CURRENT_DATE;

-- Current time
SELECT CURRENT_TIME;

-- Current timestamp
SELECT CURRENT_TIMESTAMP;

-- Current timestamp (commonly used)
SELECT NOW();

-- Local time without time zone
SELECT LOCALTIME;

-- Local timestamp without time zone
SELECT LOCALTIMESTAMP;

-- Current session timezone
SHOW timezone;


-- ============================================================
-- 3. DATE() AND TIME()
-- ============================================================

-- Get only date from timestamp
SELECT DATE(TIMESTAMP '2026-09-29 14:30:25');

-- Get only time from timestamp
SELECT TIME(TIMESTAMP '2026-09-29 14:30:25');


-- ============================================================
-- 4. EXTRACT()
-- ============================================================

-- Year
SELECT EXTRACT(YEAR FROM TIMESTAMP '2026-09-29 14:30:25');

-- Month
SELECT EXTRACT(MONTH FROM TIMESTAMP '2026-09-29 14:30:25');

-- Day
SELECT EXTRACT(DAY FROM TIMESTAMP '2026-09-29 14:30:25');

-- Hour
SELECT EXTRACT(HOUR FROM TIMESTAMP '2026-09-29 14:30:25');

-- Minute
SELECT EXTRACT(MINUTE FROM TIMESTAMP '2026-09-29 14:30:25');

-- Second
SELECT EXTRACT(SECOND FROM TIMESTAMP '2026-09-29 14:30:25');

-- Quarter
SELECT EXTRACT(QUARTER FROM DATE '2026-09-29');

-- Week
SELECT EXTRACT(WEEK FROM DATE '2026-09-29');

-- Day of week: Sunday=0, Monday=1, ..., Saturday=6
SELECT EXTRACT(DOW FROM DATE '2026-09-29');

-- ISO day of week: Monday=1, ..., Sunday=7
SELECT EXTRACT(ISODOW FROM DATE '2026-09-29');

-- Day of year
SELECT EXTRACT(DOY FROM DATE '2026-09-29');

-- ISO year
SELECT EXTRACT(ISOYEAR FROM DATE '2026-09-29');

-- Other supported fields
SELECT EXTRACT(CENTURY FROM DATE '2026-09-29');
SELECT EXTRACT(DECADE FROM DATE '2026-09-29');
SELECT EXTRACT(MILLENNIUM FROM DATE '2026-09-29');


-- ============================================================
-- 5. DATE_PART()
-- ============================================================

-- Similar to EXTRACT()
SELECT DATE_PART('year', DATE '2026-09-29');
SELECT DATE_PART('month', DATE '2026-09-29');
SELECT DATE_PART('day', DATE '2026-09-29');

-- Example with a column:
-- SELECT DATE_PART('year', hire_date) FROM employees;


-- ============================================================
-- 6. DATE ARITHMETIC
-- ============================================================

-- DATE - DATE = number of days
SELECT DATE '2026-09-29' - DATE '2026-09-20';

-- Add days
SELECT CURRENT_DATE + 7;

-- Subtract days
SELECT CURRENT_DATE - 7;

-- Add interval
SELECT CURRENT_DATE + INTERVAL '7 days';

-- Subtract interval
SELECT CURRENT_DATE - INTERVAL '7 days';

-- Add months
SELECT CURRENT_DATE + INTERVAL '2 months';

-- Subtract months
SELECT CURRENT_DATE - INTERVAL '2 months';

-- Add years
SELECT CURRENT_DATE + INTERVAL '1 year';

-- Add hours
SELECT CURRENT_TIMESTAMP + INTERVAL '5 hours';

-- Add minutes
SELECT CURRENT_TIMESTAMP + INTERVAL '30 minutes';

-- Multiple intervals
SELECT CURRENT_TIMESTAMP
       + INTERVAL '2 days'
       + INTERVAL '3 hours'
       + INTERVAL '20 minutes';


-- ============================================================
-- 7. TIMESTAMP SUBTRACTION
-- ============================================================

SELECT
    TIMESTAMP '2026-09-29 14:00:00'
    -
    TIMESTAMP '2026-09-29 10:30:00';


-- ============================================================
-- 8. AGE()
-- ============================================================

-- Human-readable date difference
SELECT AGE(
    DATE '2026-09-29',
    DATE '2020-05-10'
);

-- Age from a date to today
SELECT AGE(
    CURRENT_DATE,
    DATE '2020-05-10'
);

-- Extract years from AGE()
SELECT EXTRACT(
    YEAR FROM AGE(
        CURRENT_DATE,
        DATE '2020-05-10'
    )
);


-- ============================================================
-- 9. DATE_TRUNC()
-- ============================================================

-- Truncate to year
SELECT DATE_TRUNC(
    'year',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to quarter
SELECT DATE_TRUNC(
    'quarter',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to month
SELECT DATE_TRUNC(
    'month',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to week
SELECT DATE_TRUNC(
    'week',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to day
SELECT DATE_TRUNC(
    'day',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to hour
SELECT DATE_TRUNC(
    'hour',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to minute
SELECT DATE_TRUNC(
    'minute',
    TIMESTAMP '2026-09-29 14:35:50'
);

-- Truncate to second
SELECT DATE_TRUNC(
    'second',
    TIMESTAMP '2026-09-29 14:35:50'
);


-- ============================================================
-- 10. TO_DATE()
-- Text -> DATE
-- ============================================================

SELECT TO_DATE(
    '29-09-2026',
    'DD-MM-YYYY'
);

SELECT TO_DATE(
    '29/09/2026',
    'DD/MM/YYYY'
);


-- ============================================================
-- 11. TO_TIMESTAMP()
-- Text -> TIMESTAMP
-- ============================================================

SELECT TO_TIMESTAMP(
    '29-09-2026 14:30:25',
    'DD-MM-YYYY HH24:MI:SS'
);

SELECT TO_TIMESTAMP(
    '29-09-2026 02:30 PM',
    'DD-MM-YYYY HH12:MI PM'
);


-- ============================================================
-- 12. TO_CHAR()
-- DATE/TIMESTAMP -> TEXT
-- ============================================================

SELECT TO_CHAR(
    DATE '2026-09-29',
    'DD-MM-YYYY'
);

SELECT TO_CHAR(
    DATE '2026-09-29',
    'DD/MM/YYYY'
);

SELECT TO_CHAR(
    DATE '2026-09-29',
    'DD Mon YYYY'
);

SELECT TO_CHAR(
    DATE '2026-09-29',
    'Month YYYY'
);

SELECT TO_CHAR(
    TIMESTAMP '2026-09-29 14:35:50',
    'DD-MM-YYYY HH24:MI:SS'
);


-- ============================================================
-- 13. COMMON DATE/TIME FORMAT CODES
-- ============================================================

-- YYYY = 4-digit year
-- YY   = 2-digit year
-- MM   = month number
-- Mon  = short month name
-- Month = full month name
-- DD   = day
-- HH24 = 24-hour clock
-- HH12 = 12-hour clock
-- MI   = minute
-- SS   = second
-- AM   = AM
-- PM   = PM


-- ============================================================
-- 14. CASTING
-- ============================================================

-- Text -> DATE
SELECT '2026-09-29'::DATE;

-- Text -> TIMESTAMP
SELECT '2026-09-29 14:30:00'::TIMESTAMP;

-- TIMESTAMP -> DATE
SELECT TIMESTAMP '2026-09-29 14:30:00'::DATE;

-- Alternative syntax
SELECT CAST('2026-09-29' AS DATE);
SELECT CAST('2026-09-29 14:30:00' AS TIMESTAMP);


-- ============================================================
-- 15. MAKE_DATE(), MAKE_TIME(), MAKE_TIMESTAMP()
-- ============================================================

SELECT MAKE_DATE(2026, 9, 29);

SELECT MAKE_TIME(14, 30, 25);

SELECT MAKE_TIMESTAMP(
    2026,
    9,
    29,
    14,
    30,
    25
);


-- ============================================================
-- 16. TIME ZONES
-- ============================================================

-- Check current timezone
SHOW timezone;

-- Set timezone for the current session
SET timezone = 'Asia/Kolkata';

-- TIMESTAMPTZ example
SELECT TIMESTAMPTZ '2026-09-29 14:30:25+05:30';

-- AT TIME ZONE
SELECT
    TIMESTAMP '2026-09-29 14:30:00'
    AT TIME ZONE 'Asia/Kolkata';

-- Convert an instant to another local timezone
SELECT
    TIMESTAMPTZ '2026-09-29 14:30:00+05:30'
    AT TIME ZONE 'America/New_York';


-- ============================================================
-- 17. MAKE_TIMESTAMPTZ()
-- ============================================================

SELECT MAKE_TIMESTAMPTZ(
    2026,
    9,
    29,
    14,
    30,
    25,
    'Asia/Kolkata'
);


-- ============================================================
-- 18. UNIX EPOCH
-- ============================================================

-- Unix epoch starts at 1970-01-01 00:00:00 UTC

SELECT TO_TIMESTAMP(0);

SELECT EXTRACT(
    EPOCH
    FROM TIMESTAMP '1970-01-01 00:00:00'
);

SELECT EXTRACT(
    EPOCH
    FROM TIMESTAMP '1970-01-02 00:00:00'
);


-- ============================================================
-- 19. DATE COMPARISONS
-- ============================================================

SELECT *
FROM employees
WHERE hire_date > DATE '2020-01-01';

SELECT *
FROM employees
WHERE hire_date < DATE '2020-01-01';

SELECT *
FROM employees
WHERE hire_date = DATE '2020-05-10';

SELECT *
FROM employees
WHERE hire_date BETWEEN DATE '2018-01-01'
                    AND DATE '2020-12-31';


-- ============================================================
-- 20. IMPORTANT TIMESTAMP RANGE PATTERN
-- ============================================================

-- Find all records on a specific day.
-- Prefer >= start and < next day for timestamp columns.

SELECT *
FROM employees
WHERE login_time >= TIMESTAMP '2026-09-29 00:00:00'
  AND login_time <  TIMESTAMP '2026-09-30 00:00:00';


-- ============================================================
-- 21. LAST 7 DAYS / 30 DAYS / NEXT 7 DAYS
-- ============================================================

SELECT *
FROM employees
WHERE login_time >= CURRENT_TIMESTAMP - INTERVAL '7 days';

SELECT *
FROM employees
WHERE login_time >= CURRENT_TIMESTAMP - INTERVAL '30 days';

SELECT *
FROM employees
WHERE login_time >= CURRENT_TIMESTAMP
  AND login_time < CURRENT_TIMESTAMP + INTERVAL '7 days';



DROP TABLE IF EXISTS orders_datetime;

CREATE TABLE orders_datetime (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_datetime TIMESTAMP,
    delivery_datetime TIMESTAMP,
    amount NUMERIC(10,2)
);

INSERT INTO orders_datetime
(order_id, customer_name, order_datetime, delivery_datetime, amount)
VALUES
(101, 'Rahul',  '2026-09-01 08:15:30', '2026-09-01 12:45:20', 1200.00),
(102, 'Amit',   '2026-09-01 10:30:15', '2026-09-02 09:20:10', 850.00),
(103, 'Priya',  '2026-09-02 14:45:50', '2026-09-03 11:30:25', 2200.00),
(104, 'Neha',   '2026-09-03 18:20:10', '2026-09-04 14:15:40', 450.00),
(105, 'Vikas',  '2026-09-04 21:35:45', '2026-09-05 10:10:15', 3100.00),
(106, 'Anjali', '2026-09-05 07:05:20', '2026-09-05 15:45:30', 1750.00),
(107, 'Rohit',  '2026-09-06 12:40:35', '2026-09-07 09:55:20', 950.00),
(108, 'Sneha',  '2026-09-07 16:25:55', '2026-09-08 13:20:10', 2800.00),
(109, 'Karan',  '2026-09-08 19:10:40', '2026-09-09 11:05:35', 650.00),
(110, 'Pooja',  '2026-09-09 23:15:25', '2026-09-10 16:40:50', 4200.00),
(111, 'Arjun',  '2026-09-10 09:50:10', '2026-09-10 18:25:45', 1350.00),
(112, 'Simran', '2026-09-11 13:35:45', '2026-09-12 10:15:30', 1950.00),
(113, 'Mohit',  '2026-09-12 17:55:20', '2026-09-13 12:35:40', 2750.00),
(114, 'Kavita', '2026-09-13 20:45:35', '2026-09-14 15:20:15', 1100.00),
(115, 'Ravi',   '2026-09-14 06:30:50', '2026-09-14 13:10:25', 3200.00);


select * from orders_datetime;


--Find orders placed after 6 PM.

select customer_name,order_datetime,extract(hour from order_datetime) as hours from orders_datetime
where extract(hour from order_datetime) > 18;


--Find orders placed before 9 AM.

select customer_name,order_datetime,extract(hour from order_datetime) as hours from orders_datetime
where extract (hour from order_datetime) < 9;


--Find orders placed between 9 AM and 5 PM.

select customer_name,order_datetime,extract(hour from order_datetime) as hours
from orders_datetime
where extract(hour from order_datetime) between 9 and  17;


--Find orders placed exactly at or after 8 PM.

select customer_name,order_datetime,extract(hour from order_datetime) as hours
from orders_datetime
where extract(hour from order_datetime) >= 20;


--Find orders placed during the morning.

SELECT customer_name,
       order_datetime,
       EXTRACT(HOUR FROM order_datetime) AS hours
FROM orders_datetime
WHERE EXTRACT(HOUR FROM order_datetime) < 12;

-- Find orders placed during the afternoon

SELECT customer_name,
       order_datetime,
       EXTRACT(HOUR FROM order_datetime) AS hours
FROM orders_datetime
WHERE EXTRACT(HOUR FROM order_datetime) BETWEEN 12 AND 16;













/* Why Date/Time is important:
Data Analyst at Netflix / Amazon
- Which days generate highest sales ?
- When do users watch the most content ? 
- when people streams most content ??

-- All these are dependent on date and Time data
-- 2025-04-01 20:12:33 */

-- Create a table for astronomy data
CREATE TABLE astronomy_data (
    id SERIAL PRIMARY KEY,
    observation_date VARCHAR(100),
    observation_datetime VARCHAR(100),
    event_date varchar(100),
    event_timestamp varchar(100),
    celestial_body VARCHAR(100),
    magnitude FLOAT
);

-- Insert sample data
-- Insert sample data into the astronomy_data table
INSERT INTO astronomy_data (observation_date, observation_datetime, event_date, event_timestamp, celestial_body, magnitude) VALUES
('2024-04-13', '2024-04-13 15:30:00', '13/04/2024', '13-Apr-2024 15:30:00', 'Moon', -12.5),
('2024-04-13', '2024-04-13 18:45:00', '12/04/2024', '12-Apr-2024 18:45:00', 'Mars', -2.1),
('2024-04-14', '2024-04-14 07:00:00', '14/04/2024', '14-Apr-2024 07:00:00', 'Saturn', 0.5),
('2024-04-14', '2024-04-14 22:15:00', '13/04/2024', '13-Apr-2024 22:15:00', 'Jupiter', -2.7),
('2024-04-15', '2024-04-15 04:30:00', '13/04/2024', '13-Apr-2024 04:30:00', 'Venus', -4.6);

select * from astronomy_data;


--  How do you convert the event_date column from DD/MM/YYYY 
-- format into a DATE?
SELECT to_date('Apr 13 2024','Mon DD YYYY');

-- event_date column
SELECT event_date, to_date(event_date,'DD MM YYYY') as 
converted_event_date from astronomy_data; 

-- Get all the records between 13 april 2024 and 15 april 2024
select * from astronomy_data
where event_date between '13-04-2024' And '15-04-2024';

-- Find the latest(recent) recorded date ?? 
SELECT max(observation_date) as latest_record FROM astronomy_data;

-- Greatest date 
select GREATEST(cast('2024-04-22' as date), cast('2024-04-11' as date));

-- For each record extract the minute of obseobservation_datetime; 
SELECT observation_datetime, 
EXTRACT(MINUTE from cast(observation_datetime as TIMESTAMP)) as minute 
from astronomy_data;

-- What is the difference in days between observation_date and event_date?

SELECT observation_date,event_date, 
to_date(observation_date,'YYYY-MM-DD')  - 
to_date(event_date, 'DD/MM/YYYY') as date_diff
from astronomy_data;

-- Find the number of days elapsed since each observation_date?
SELECT observation_date, current_date - observation_date::date 
AS days_elapsed
FROM astronomy_data;

-- Adding Intervals 
-- Add 1 day to observation_date and display the result (Interval)

SELECT observation_date,cast(observation_date as TIMESTAMP) + 
INTERVAL '1 day' as next_day,
cast(observation_date as TIMESTAMP) + 
INTERVAL '45 minutes' as next_45min
from astronomy_data;

-- Previous day 
  SELECT observation_date,cast(observation_date as Date) - 
  INTERVAL '1 day' as previous_day from astronomy_data;



/* HR Employees Data */
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    last_promotion_date DATE,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Amit', 'HR', '2018-04-10', '2022-03-15', 50000),
(2, 'Neha', 'IT', '2020-06-20', '2023-07-01', 70000),
(3, 'Raj', 'Finance', '2015-01-05', '2020-12-10', 80000),
(4, 'Priya', 'IT', '2022-09-18', '2024-01-01', 65000),
(5, 'Karan', 'HR', '2019-11-25', '2021-05-20', 55000);

SELECT * from employees;

-- Find number of employees hired in the month of April
-- Extract(month from hire_date)
SELECT count(*) from employees
where EXTRACT(month from hire_date) = 4;

-- Calculate the number of years each employee has worked till today??
SELECT name,hire_date,
EXTRACT(YEAR FROM AGE(CURRENT_DATE, hire_date)) AS years_worked
FROM employees;

select name, 
extract(year from current_date) - extract(year from hire_date) as no_of_years
from employees;

-- Find how many days have elapsed since last promotion ??
select name, CURRENT_DATE - last_promotion_date as
days_since_last_promotion from employees;

-- Find the employees hired in the last 7 years ??
select name, extract(year from age(current_date, hire_date))
from employees
where extract(year from hire_date) >= 
extract(year from current_date) - 7;

SELECT * FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '7 years';

SELECT name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM CURRENT_DATE) - 
EXTRACT(YEAR FROM hire_date) <= 7;

/* TASK:
1. Assume employees are eligible for a promotion after 4 years of the
last_promotion_date, Find the next eligible promotion dateastronomy_data

2. Find the employee who joined the earliest. 
3. Find the employee who joined recently
4. Find the most recently hired employee in each department 
*/ 







/* pratice more of this question using AI with case and diffrence and more for more 
and more pratice use any ai tool to pratice
