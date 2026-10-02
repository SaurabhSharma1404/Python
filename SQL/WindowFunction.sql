-- ================================================================
-- POSTGRESQL WINDOW FUNCTIONS — COMPLETE NOTES + PRACTICE
-- ================================================================
-- Goal: Learn window functions from ZERO to advanced level.
-- Style: Simple language + examples + practice questions + answers.
--
-- IMPORTANT IDEA:
-- A window function calculates something across related rows
-- WITHOUT collapsing those rows into one row.
--
-- Normal GROUP BY:
--   Many rows -> ONE row per group
--
-- Window function:
--   Many rows -> KEEP every row + add the calculation
-- ================================================================


-- ================================================================
-- 0. SAMPLE DATA
-- ================================================================

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    sale_id       INT PRIMARY KEY,
    employee_id   INT,
    employee_name VARCHAR(50),
    department    VARCHAR(50),
    sale_date     DATE,
    sales_amount  NUMERIC(10,2)
);

INSERT INTO sales VALUES
(1, 101, 'Aman',   'IT',        '2026-01-05', 5000),
(2, 102, 'Rahul',  'IT',        '2026-01-10', 7000),
(3, 103, 'Priya',  'IT',        '2026-01-15', 6000),
(4, 104, 'Neha',   'HR',        '2026-01-05', 4000),
(5, 105, 'Ravi',   'HR',        '2026-01-12', 6500),
(6, 106, 'Simran', 'HR',        '2026-01-20', 5500),
(7, 107, 'Vikas',  'Sales',     '2026-01-03', 9000),
(8, 108, 'Ankit',  'Sales',     '2026-01-11', 12000),
(9, 109, 'Pooja',  'Sales',     '2026-01-18', 8000),
(10,110, 'Karan',  'IT',        '2026-02-02', 7500),
(11,111, 'Meera',  'HR',        '2026-02-05', 4500),
(12,112, 'Arjun',  'Sales',     '2026-02-08', 15000);


-- ================================================================
-- 1. WHAT IS A WINDOW FUNCTION?
-- ================================================================

-- Simple:
-- A window function looks at other rows while still showing
-- the current row.

-- Basic syntax:

SELECT
    employee_name,
    sales_amount,
    SUM(sales_amount) OVER () AS total_sales
FROM sales;

-- OVER() tells PostgreSQL:
-- "Perform this calculation as a window calculation."

-- Compare with GROUP BY:

SELECT SUM(sales_amount) AS total_sales
FROM sales;

-- GROUP BY / aggregate collapses rows.
-- Window function keeps all rows.


-- ================================================================
-- 2. OVER()
-- ================================================================

-- OVER() with nothing inside:
-- Calculate using the entire result set.

SELECT
    employee_name,
    sales_amount,
    AVG(sales_amount) OVER () AS company_avg
FROM sales;


-- PRACTICE 1
-- Display every employee and total sales of the whole company.

SELECT
    employee_name,
    sales_amount,
    SUM(sales_amount) OVER () AS total_company_sales
FROM sales;

-- ANSWER IDEA:
-- SUM(sales_amount) calculates total.
-- OVER() makes it a window function.
-- Every row receives the same total.


-- ================================================================
-- 3. PARTITION BY
-- ================================================================

-- PARTITION BY divides rows into groups for the window calculation.
--
-- Think:
-- PARTITION BY department
-- = "Do the calculation separately for each department."

SELECT
    employee_name,
    department,
    sales_amount,
    SUM(sales_amount) OVER (
        PARTITION BY department
    ) AS department_total
FROM sales;


-- PRACTICE 2
-- Display every employee and the total sales of their department.

SELECT
    employee_name,
    department,
    sales_amount,
    SUM(sales_amount) OVER (
        PARTITION BY department
    ) AS department_total
FROM sales;


-- PRACTICE 3
-- Display every employee and the average sales of their department.

SELECT
    employee_name,
    department,
    sales_amount,
    AVG(sales_amount) OVER (
        PARTITION BY department
    ) AS department_average
FROM sales;


-- PRACTICE 4
-- Display every employee and the minimum sale in their department.

SELECT
    employee_name,
    department,
    sales_amount,
    MIN(sales_amount) OVER (
        PARTITION BY department
    ) AS min_department_sale
FROM sales;


-- PRACTICE 5
-- Display every employee and the maximum sale in their department.

SELECT
    employee_name,
    department,
    sales_amount,
    MAX(sales_amount) OVER (
        PARTITION BY department
    ) AS max_department_sale
FROM sales;


-- PRACTICE 6
-- Display every employee and the number of sales records
-- in their department.

SELECT
    employee_name,
    department,
    COUNT(sale_id) OVER (
        PARTITION BY department
    ) AS department_sale_count
FROM sales;


-- ================================================================
-- 4. ORDER BY INSIDE OVER()
-- ================================================================

-- ORDER BY tells the window function the order in which
-- rows should be processed.

SELECT
    employee_name,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sales_amount
    ) AS running_total
FROM sales;


-- Very important:
--
-- ORDER BY outside OVER():
-- controls the final display order.
--
-- ORDER BY inside OVER():
-- controls the window calculation order.


-- ================================================================
-- 5. PARTITION BY + ORDER BY
-- ================================================================

-- Calculate a running total separately inside every department.

SELECT
    employee_name,
    department,
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sale_date
    ) AS department_running_total
FROM sales;


-- ================================================================
-- 6. ROW_NUMBER()
-- ================================================================

-- ROW_NUMBER gives every row a unique sequential number.

SELECT
    employee_name,
    sales_amount,
    ROW_NUMBER() OVER (
        ORDER BY sales_amount DESC
    ) AS row_num
FROM sales;


-- PARTITION example:

SELECT
    employee_name,
    department,
    sales_amount,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS department_row_num
FROM sales;


-- PRACTICE 7
-- Give each employee a row number based on sales amount
-- from highest to lowest.

SELECT
    employee_name,
    sales_amount,
    ROW_NUMBER() OVER (
        ORDER BY sales_amount DESC
    ) AS row_num
FROM sales;


-- PRACTICE 8
-- Give each employee a row number based on sales amount
-- within their department.

SELECT
    employee_name,
    department,
    sales_amount,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS row_num
FROM sales;


-- ================================================================
-- 7. RANK()
-- ================================================================

-- RANK gives the same rank to tied values.
-- After a tie, rank numbers can have gaps.

SELECT
    employee_name,
    sales_amount,
    RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS sales_rank
FROM sales;


-- Example:
-- 100 -> rank 1
-- 90  -> rank 2
-- 90  -> rank 2
-- 80  -> rank 4
--
-- Notice: rank 3 is skipped.


-- ================================================================
-- 8. DENSE_RANK()
-- ================================================================

-- DENSE_RANK also gives the same rank to tied values,
-- but does NOT skip the next rank.

SELECT
    employee_name,
    sales_amount,
    DENSE_RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS dense_sales_rank
FROM sales;


-- Example:
-- 100 -> 1
-- 90  -> 2
-- 90  -> 2
-- 80  -> 3


-- ================================================================
-- 9. ROW_NUMBER vs RANK vs DENSE_RANK
-- ================================================================

-- ROW_NUMBER:
-- Always unique.
--
-- RANK:
-- Ties share rank + gaps.
--
-- DENSE_RANK:
-- Ties share rank + no gaps.


-- PRACTICE 9
-- Show ROW_NUMBER, RANK and DENSE_RANK together.

SELECT
    employee_name,
    sales_amount,
    ROW_NUMBER() OVER (ORDER BY sales_amount DESC) AS row_number,
    RANK()       OVER (ORDER BY sales_amount DESC) AS rank,
    DENSE_RANK() OVER (ORDER BY sales_amount DESC) AS dense_rank
FROM sales;


-- ================================================================
-- 10. TOP N / BOTTOM N USING WINDOW FUNCTIONS
-- ================================================================

-- You cannot normally use a window-function alias directly in WHERE.
-- Use a subquery/CTE.

-- Top 3 employees:

SELECT *
FROM (
    SELECT
        employee_name,
        sales_amount,
        ROW_NUMBER() OVER (
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
) x
WHERE rn <= 3;


-- Top 3 in EACH department:

SELECT *
FROM (
    SELECT
        employee_name,
        department,
        sales_amount,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
) x
WHERE rn <= 3;


-- ================================================================
-- 11. LAG()
-- ================================================================

-- LAG = previous row.
-- Think: LOOK BEHIND.

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale
FROM sales;


-- First row gets NULL because there is no previous row.


-- PRACTICE 10
-- Show each sale and the previous sale amount.

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale
FROM sales;


-- Calculate difference from previous row:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale,
    sales_amount
      - LAG(sales_amount) OVER (
            ORDER BY sale_date
        ) AS difference
FROM sales;


-- LAG with PARTITION:
-- Previous sale of the SAME department.

SELECT
    employee_name,
    department,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sale_date
    ) AS previous_department_sale
FROM sales;


-- LAG offset:
-- LAG(column, 2) = two rows before.

SELECT
    employee_name,
    sales_amount,
    LAG(sales_amount, 2) OVER (
        ORDER BY sale_date
    ) AS two_sales_ago
FROM sales;


-- LAG default value:
-- If previous row doesn't exist, return 0 instead of NULL.

SELECT
    employee_name,
    sales_amount,
    LAG(sales_amount, 1, 0) OVER (
        ORDER BY sale_date
    ) AS previous_sale
FROM sales;


-- ================================================================
-- 12. LEAD()
-- ================================================================

-- LEAD = next row.
-- Think: LOOK AHEAD.

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LEAD(sales_amount) OVER (
        ORDER BY sale_date
    ) AS next_sale
FROM sales;


-- LAG  = previous
-- LEAD = next


-- ================================================================
-- 13. FIRST_VALUE()
-- ================================================================

-- FIRST_VALUE returns the first value in the window.

SELECT
    employee_name,
    department,
    sales_amount,
    FIRST_VALUE(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS highest_department_sale
FROM sales;


-- ================================================================
-- 14. LAST_VALUE()
-- ================================================================

-- LAST_VALUE can be confusing.
-- The window frame matters.
--
-- To get the actual last value of the whole partition,
-- explicitly use:
-- ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING

SELECT
    employee_name,
    department,
    sales_amount,
    LAST_VALUE(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sales_amount
        ROWS BETWEEN UNBOUNDED PRECEDING
             AND UNBOUNDED FOLLOWING
    ) AS last_department_sale
FROM sales;


-- ================================================================
-- 15. NTH_VALUE()
-- ================================================================

-- NTH_VALUE(column, n)
-- returns the nth value in the window.

SELECT
    employee_name,
    department,
    sales_amount,
    NTH_VALUE(sales_amount, 2) OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
        ROWS BETWEEN UNBOUNDED PRECEDING
             AND UNBOUNDED FOLLOWING
    ) AS second_highest_sale
FROM sales;


-- ================================================================
-- 16. AGGREGATE WINDOW FUNCTIONS
-- ================================================================

-- Aggregate functions can become window functions by adding OVER().

-- SUM
SELECT
    employee_name,
    sales_amount,
    SUM(sales_amount) OVER () AS total_sales
FROM sales;

-- AVG
SELECT
    employee_name,
    sales_amount,
    AVG(sales_amount) OVER () AS average_sales
FROM sales;

-- MIN
SELECT
    employee_name,
    sales_amount,
    MIN(sales_amount) OVER () AS minimum_sale
FROM sales;

-- MAX
SELECT
    employee_name,
    sales_amount,
    MAX(sales_amount) OVER () AS maximum_sale
FROM sales;

-- COUNT
SELECT
    employee_name,
    COUNT(*) OVER () AS total_rows
FROM sales;


-- ================================================================
-- 17. STATISTICAL WINDOW FUNCTIONS
-- ================================================================

-- PostgreSQL aggregate/statistical functions can also be used
-- as window functions where they support OVER().

-- STDDEV / STDDEV_SAMP
SELECT
    employee_name,
    sales_amount,
    STDDEV_SAMP(sales_amount) OVER () AS sample_stddev
FROM sales;

-- STDDEV_POP
SELECT
    employee_name,
    sales_amount,
    STDDEV_POP(sales_amount) OVER () AS population_stddev
FROM sales;

-- VAR_SAMP
SELECT
    employee_name,
    sales_amount,
    VAR_SAMP(sales_amount) OVER () AS sample_variance
FROM sales;

-- VAR_POP
SELECT
    employee_name,
    sales_amount,
    VAR_POP(sales_amount) OVER () AS population_variance
FROM sales;


-- ================================================================
-- 18. MEDIAN / PERCENTILE WINDOW CALCULATIONS
-- ================================================================

-- PostgreSQL does not have MEDIAN() as a simple built-in aggregate.
-- percentile_cont can calculate a continuous percentile.

SELECT
    employee_name,
    sales_amount,
    PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY sales_amount)
        OVER () AS median_sales
FROM sales;


-- 25th percentile:

SELECT
    employee_name,
    sales_amount,
    PERCENTILE_CONT(0.25)
        WITHIN GROUP (ORDER BY sales_amount)
        OVER () AS p25
FROM sales;


-- 75th percentile:

SELECT
    employee_name,
    sales_amount,
    PERCENTILE_CONT(0.75)
        WITHIN GROUP (ORDER BY sales_amount)
        OVER () AS p75
FROM sales;


-- ================================================================
-- 19. RUNNING TOTAL
-- ================================================================

-- Running total = current row + all previous rows.

SELECT
    employee_name,
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM sales;


-- Short form often works too:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
    ) AS running_total
FROM sales;


-- ================================================================
-- 20. RUNNING AVERAGE
-- ================================================================

SELECT
    employee_name,
    sale_date,
    sales_amount,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_average
FROM sales;


-- ================================================================
-- 21. MOVING AVERAGE
-- ================================================================

-- Average of current row + previous 2 rows = 3-row moving average.

SELECT
    employee_name,
    sale_date,
    sales_amount,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average_3
FROM sales;


-- ================================================================
-- 22. ROWS
-- ================================================================

-- ROWS works with physical rows.
--
-- ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
-- = current row + two rows before it.


-- ================================================================
-- 23. RANGE
-- ================================================================

-- RANGE works based on the ORDER BY value / peer values.
-- It is different from ROWS when duplicate ORDER BY values exist.
--
-- For beginner practice:
-- Use ROWS when you specifically mean "previous N rows."
-- Use RANGE when you specifically want value-based framing.


-- ================================================================
-- 24. WINDOW FRAME
-- ================================================================

-- General syntax:

OVER (
    PARTITION BY ...
    ORDER BY ...
    ROWS BETWEEN ... AND ...
)

-- Common frame boundaries:
--
-- UNBOUNDED PRECEDING = start of partition
-- n PRECEDING         = n rows before
-- CURRENT ROW         = current row
-- n FOLLOWING         = n rows after
-- UNBOUNDED FOLLOWING = end of partition


-- Example:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS three_row_total
FROM sales;


-- ================================================================
-- 25. UNBOUNDED PRECEDING / FOLLOWING
-- ================================================================

-- From first row to current row:

ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW


-- Entire partition:

ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING


-- Current row + next two rows:

ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING


-- Previous two rows + current row + next two rows:

ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING


-- ================================================================
-- 26. PERCENT_RANK()
-- ================================================================

-- PERCENT_RANK gives relative rank from 0 to 1.

SELECT
    employee_name,
    sales_amount,
    PERCENT_RANK() OVER (
        ORDER BY sales_amount
    ) AS percent_rank
FROM sales;


-- Formula concept:
-- (rank - 1) / (number_of_rows - 1)


-- ================================================================
-- 27. CUME_DIST()
-- ================================================================

-- CUME_DIST tells the proportion of rows whose value is
-- less than or equal to the current row's value.

SELECT
    employee_name,
    sales_amount,
    CUME_DIST() OVER (
        ORDER BY sales_amount
    ) AS cumulative_distribution
FROM sales;


-- ================================================================
-- 28. NTILE()
-- ================================================================

-- NTILE divides rows into approximately equal buckets.

SELECT
    employee_name,
    sales_amount,
    NTILE(4) OVER (
        ORDER BY sales_amount DESC
    ) AS quartile
FROM sales;


-- NTILE(4) = 4 groups.
-- NTILE(10) = 10 groups.


-- ================================================================
-- 29. CONDITIONAL WINDOW CALCULATIONS
-- ================================================================

-- CASE can be used inside a window aggregate.

SELECT
    employee_name,
    department,
    sales_amount,
    SUM(
        CASE
            WHEN sales_amount >= 7000 THEN sales_amount
            ELSE 0
        END
    ) OVER (
        PARTITION BY department
    ) AS high_sales_department_total
FROM sales;


-- ================================================================
-- 30. PERCENTAGE OF DEPARTMENT TOTAL
-- ================================================================

SELECT
    employee_name,
    department,
    sales_amount,
    ROUND(
        sales_amount * 100.0 /
        SUM(sales_amount) OVER (PARTITION BY department),
        2
    ) AS percentage_of_department
FROM sales;


-- ================================================================
-- 31. DIFFERENCE FROM DEPARTMENT AVERAGE
-- ================================================================

SELECT
    employee_name,
    department,
    sales_amount,
    ROUND(
        sales_amount -
        AVG(sales_amount) OVER (PARTITION BY department),
        2
    ) AS difference_from_department_avg
FROM sales;


-- ================================================================
-- 32. ABOVE / BELOW DEPARTMENT AVERAGE
-- ================================================================

SELECT
    employee_name,
    department,
    sales_amount,
    CASE
        WHEN sales_amount >
             AVG(sales_amount) OVER (PARTITION BY department)
        THEN 'Above Average'
        ELSE 'At or Below Average'
    END AS performance
FROM sales;


-- ================================================================
-- 33. FIND THE HIGHEST EMPLOYEE IN EACH DEPARTMENT
-- ================================================================

SELECT *
FROM (
    SELECT
        employee_name,
        department,
        sales_amount,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
) x
WHERE rn = 1;


-- ================================================================
-- 34. SECOND HIGHEST IN EACH DEPARTMENT
-- ================================================================

SELECT *
FROM (
    SELECT
        employee_name,
        department,
        sales_amount,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rnk
    FROM sales
) x
WHERE rnk = 2;


-- ================================================================
-- 35. THIRD HIGHEST IN EACH DEPARTMENT
-- ================================================================

SELECT *
FROM (
    SELECT
        employee_name,
        department,
        sales_amount,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rnk
    FROM sales
) x
WHERE rnk = 3;


-- ================================================================
-- 36. REMOVE DUPLICATES WITH ROW_NUMBER()
-- ================================================================

-- General idea:
-- Give duplicates a row number and keep rn = 1.

-- Example pattern:

SELECT *
FROM (
    SELECT
        s.*,
        ROW_NUMBER() OVER (
            PARTITION BY employee_name, department, sales_amount
            ORDER BY sale_id
        ) AS rn
    FROM sales s
) x
WHERE rn = 1;


-- ================================================================
-- 37. THREE MOST RECENT ORDERS PER CUSTOMER
-- ================================================================
-- Generic pattern useful for your SQL practice.

-- Suppose Orders has:
-- customer_id, order_id, order_date

/*
SELECT *
FROM (
    SELECT
        customer_id,
        order_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date DESC
        ) AS rn
    FROM Orders
) x
WHERE rn <= 3
ORDER BY customer_id, order_date DESC;
*/


-- ================================================================
-- 38. LATEST RECORD PER GROUP
-- ================================================================

-- Example:
-- Latest sale by each department.

SELECT *
FROM (
    SELECT
        s.*,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sale_date DESC, sale_id DESC
        ) AS rn
    FROM sales s
) x
WHERE rn = 1;


-- ================================================================
-- 39. FIRST RECORD PER GROUP
-- ================================================================

SELECT *
FROM (
    SELECT
        s.*,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sale_date ASC, sale_id ASC
        ) AS rn
    FROM sales s
) x
WHERE rn = 1;


-- ================================================================
-- 40. COMPARING CURRENT ROW WITH PREVIOUS ROW
-- ================================================================

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_amount,
    sales_amount -
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS change_amount
FROM sales;


-- Percentage change:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_amount,
    ROUND(
        (
            sales_amount -
            LAG(sales_amount) OVER (
                ORDER BY sale_date
            )
        ) * 100.0 /
        NULLIF(
            LAG(sales_amount) OVER (
                ORDER BY sale_date
            ), 0
        ),
        2
    ) AS percentage_change
FROM sales;


-- ================================================================
-- 41. CHANGE FROM PREVIOUS SALE WITH PARTITION
-- ================================================================

SELECT
    employee_name,
    department,
    sale_date,
    sales_amount,
    sales_amount -
    LAG(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sale_date
    ) AS change_from_previous_department_sale
FROM sales;


-- ================================================================
-- 42. WINDOW ALIAS USING WINDOW CLAUSE
-- ================================================================

-- Instead of repeating the same OVER definition:

SELECT
    employee_name,
    department,
    sales_amount,
    SUM(sales_amount) OVER w AS department_total,
    AVG(sales_amount) OVER w AS department_avg,
    MAX(sales_amount) OVER w AS department_max
FROM sales
WINDOW w AS (
    PARTITION BY department
);


-- ================================================================
-- 43. MULTIPLE WINDOWS IN ONE QUERY
-- ================================================================

SELECT
    employee_name,
    department,
    sales_amount,

    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS row_number,

    RANK() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS rank,

    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS dense_rank,

    SUM(sales_amount) OVER (
        PARTITION BY department
    ) AS department_total,

    AVG(sales_amount) OVER (
        PARTITION BY department
    ) AS department_average

FROM sales;


-- ================================================================
-- 44. IMPORTANT: WHERE AND WINDOW FUNCTIONS
-- ================================================================

-- This DOES NOT work:

/*
SELECT
    employee_name,
    sales_amount,
    ROW_NUMBER() OVER (ORDER BY sales_amount DESC) AS rn
FROM sales
WHERE rn <= 3;
*/

-- Why?
-- WHERE is evaluated before the SELECT alias is available.
--
-- Use a subquery or CTE.


-- ================================================================
-- 45. CTE + WINDOW FUNCTION
-- ================================================================

WITH ranked_sales AS (
    SELECT
        employee_name,
        department,
        sales_amount,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
)
SELECT *
FROM ranked_sales
WHERE rn <= 2;


-- ================================================================
-- 46. WINDOW FUNCTIONS + GROUP BY
-- ================================================================

-- You can combine grouped results and window calculations,
-- but understand which level you are calculating at.

SELECT
    department,
    SUM(sales_amount) AS department_total,
    RANK() OVER (
        ORDER BY SUM(sales_amount) DESC
    ) AS department_rank
FROM sales
GROUP BY department;


-- This ranks departments by their total sales.


-- ================================================================
-- 47. WINDOW FUNCTION EXECUTION IDEA
-- ================================================================

-- Simplified logical order to remember:
--
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- WINDOW FUNCTIONS / SELECT processing
-- ORDER BY
-- LIMIT
--
-- Exact PostgreSQL internals are more detailed,
-- but this model is enough for normal practice.


-- ================================================================
-- 48. IMPORTANT DIFFERENCE:
-- GROUP BY vs PARTITION BY
-- ================================================================

-- GROUP BY:
SELECT
    department,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY department;

-- Result: one row per department.


-- PARTITION BY:
SELECT
    employee_name,
    department,
    sales_amount,
    SUM(sales_amount) OVER (
        PARTITION BY department
    ) AS department_total
FROM sales;

-- Result: every employee remains visible.


-- ================================================================
-- 49. PRACTICE SET — BEGINNER
-- ================================================================

-- Q1. Display every employee and total company sales.
-- ANSWER:

SELECT
    employee_name,
    SUM(sales_amount) OVER () AS total_sales
FROM sales;


-- Q2. Display every employee and average company sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    AVG(sales_amount) OVER () AS average_sales
FROM sales;


-- Q3. Display employee and department total.
-- ANSWER:

SELECT
    employee_name,
    department,
    SUM(sales_amount) OVER (
        PARTITION BY department
    ) AS department_total
FROM sales;


-- Q4. Display employee and department average.
-- ANSWER:

SELECT
    employee_name,
    department,
    AVG(sales_amount) OVER (
        PARTITION BY department
    ) AS department_average
FROM sales;


-- Q5. Display employee and minimum sale in department.
-- ANSWER:

SELECT
    employee_name,
    department,
    MIN(sales_amount) OVER (
        PARTITION BY department
    ) AS department_min
FROM sales;


-- Q6. Display employee and maximum sale in department.
-- ANSWER:

SELECT
    employee_name,
    department,
    MAX(sales_amount) OVER (
        PARTITION BY department
    ) AS department_max
FROM sales;


-- Q7. Count sales records in each department.
-- ANSWER:

SELECT
    employee_name,
    department,
    COUNT(*) OVER (
        PARTITION BY department
    ) AS department_count
FROM sales;


-- ================================================================
-- 50. PRACTICE SET — RANKING
-- ================================================================

-- Q8. Give each employee a row number by highest sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    ROW_NUMBER() OVER (
        ORDER BY sales_amount DESC
    ) AS rn
FROM sales;


-- Q9. Rank employees by highest sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS rnk
FROM sales;


-- Q10. Dense-rank employees by highest sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    DENSE_RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS dense_rnk
FROM sales;


-- Q11. Rank employees inside each department.
-- ANSWER:

SELECT
    employee_name,
    department,
    sales_amount,
    RANK() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS department_rank
FROM sales;


-- Q12. Return top 3 employees overall.
-- ANSWER:

SELECT *
FROM (
    SELECT
        employee_name,
        sales_amount,
        ROW_NUMBER() OVER (
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
) x
WHERE rn <= 3;


-- Q13. Return top 2 employees from every department.
-- ANSWER:

SELECT *
FROM (
    SELECT
        employee_name,
        department,
        sales_amount,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
) x
WHERE rn <= 2;


-- ================================================================
-- 51. PRACTICE SET — LAG / LEAD
-- ================================================================

-- Q14. Show previous sale.
-- ANSWER:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale
FROM sales;


-- Q15. Show next sale.
-- ANSWER:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    LEAD(sales_amount) OVER (
        ORDER BY sale_date
    ) AS next_sale
FROM sales;


-- Q16. Show difference from previous sale.
-- ANSWER:

SELECT
    employee_name,
    sale_date,
    sales_amount,
    sales_amount -
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS difference
FROM sales;


-- Q17. Show previous sale within each department.
-- ANSWER:

SELECT
    employee_name,
    department,
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        PARTITION BY department
        ORDER BY sale_date
    ) AS previous_department_sale
FROM sales;


-- ================================================================
-- 52. PRACTICE SET — RUNNING / MOVING CALCULATIONS
-- ================================================================

-- Q18. Running total.
-- ANSWER:

SELECT
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM sales;


-- Q19. Running average.
-- ANSWER:

SELECT
    sale_date,
    sales_amount,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_average
FROM sales;


-- Q20. Three-row moving average.
-- ANSWER:

SELECT
    sale_date,
    sales_amount,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM sales;


-- ================================================================
-- 53. PRACTICE SET — STATISTICS
-- ================================================================

-- Q21. Show standard deviation of all sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    STDDEV_SAMP(sales_amount) OVER () AS sample_stddev
FROM sales;


-- Q22. Show variance of all sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    VAR_SAMP(sales_amount) OVER () AS sample_variance
FROM sales;


-- Q23. Show median sales.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY sales_amount)
        OVER () AS median_sales
FROM sales;


-- Q24. Divide employees into 4 sales groups.
-- ANSWER:

SELECT
    employee_name,
    sales_amount,
    NTILE(4) OVER (
        ORDER BY sales_amount DESC
    ) AS group_number
FROM sales;


-- ================================================================
-- 54. PRACTICE SET — BUSINESS QUESTIONS
-- ================================================================

-- Q25. What percentage of department sales belongs to each employee?
-- ANSWER:

SELECT
    employee_name,
    department,
    sales_amount,
    ROUND(
        sales_amount * 100.0 /
        SUM(sales_amount) OVER (
            PARTITION BY department
        ),
        2
    ) AS department_percentage
FROM sales;


-- Q26. Which employees are above their department average?
-- ANSWER:

SELECT
    employee_name,
    department,
    sales_amount,
    CASE
        WHEN sales_amount >
             AVG(sales_amount) OVER (
                 PARTITION BY department
             )
        THEN 'Above Average'
        ELSE 'Not Above Average'
    END AS result
FROM sales;


-- Q27. Find highest seller in each department.
-- ANSWER:

WITH ranked AS (
    SELECT
        employee_name,
        department,
        sales_amount,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rn
    FROM sales
)
SELECT *
FROM ranked
WHERE rn = 1;


-- Q28. Find second-highest seller in each department.
-- ANSWER:

WITH ranked AS (
    SELECT
        employee_name,
        department,
        sales_amount,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY sales_amount DESC
        ) AS rnk
    FROM sales
)
SELECT *
FROM ranked
WHERE rnk = 2;


-- ================================================================
-- 55. NAMED WINDOWS
-- ================================================================

-- Useful when the same window definition is repeated.

SELECT
    employee_name,
    department,
    sales_amount,
    SUM(sales_amount) OVER w AS total,
    AVG(sales_amount) OVER w AS average,
    MAX(sales_amount) OVER w AS maximum
FROM sales
WINDOW w AS (
    PARTITION BY department
);


-- ================================================================
-- 56. NULLS AND WINDOW FUNCTIONS
-- ================================================================

-- LAG/LEAD can return NULL when no previous/next row exists.

SELECT
    employee_name,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale
FROM sales;


-- Replace NULL:

SELECT
    employee_name,
    COALESCE(
        LAG(sales_amount) OVER (
            ORDER BY sale_date
        ),
        0
    ) AS previous_sale
FROM sales;


-- ================================================================
-- 57. TIES: VERY IMPORTANT
-- ================================================================

-- If two employees have the same sales:
--
-- ROW_NUMBER -> different numbers
-- RANK       -> same rank, gap after tie
-- DENSE_RANK -> same rank, no gap


-- Use ROW_NUMBER when you need exactly N rows.
-- Use DENSE_RANK when you mean "top N distinct ranks."


-- ================================================================
-- 58. COMMON MISTAKES
-- ================================================================

-- Mistake 1:
-- Forgetting ORDER BY for ROW_NUMBER/RANK when ranking is needed.

-- Mistake 2:
-- Confusing PARTITION BY with GROUP BY.

-- Mistake 3:
-- Thinking LAG means next row.
-- LAG = previous.
-- LEAD = next.

-- Mistake 4:
-- Filtering a window alias directly in WHERE.
-- Use CTE/subquery.

-- Mistake 5:
-- Forgetting that LAST_VALUE depends on the window frame.

-- Mistake 6:
-- Using ROW_NUMBER when ties should share the same rank.

-- Mistake 7:
-- Forgetting a deterministic tie-breaker:
-- ORDER BY sales_amount DESC, employee_id ASC


-- ================================================================
-- 59. QUICK CHEAT SHEET
-- ================================================================

-- OVER()
--       Turns an aggregate/ranking function into a window calculation.

-- PARTITION BY
--       Creates separate groups for the window calculation.

-- ORDER BY
--       Defines calculation/ranking order.

-- ROWS
--       Physical row-based frame.

-- RANGE
--       Value/peer-based frame.

-- ROW_NUMBER()
--       Unique sequential number.

-- RANK()
--       Ranking with gaps after ties.

-- DENSE_RANK()
--       Ranking without gaps after ties.

-- LAG()
--       Previous row.

-- LEAD()
--       Next row.

-- FIRST_VALUE()
--       First value.

-- LAST_VALUE()
--       Last value according to the window frame.

-- NTH_VALUE()
--       Nth value.

-- NTILE(n)
--       Divide rows into n buckets.

-- PERCENT_RANK()
--       Relative rank from 0 to 1.

-- CUME_DIST()
--       Cumulative distribution from 0 to 1.

-- SUM() OVER
--       Total/running total.

-- AVG() OVER
--       Average/running average/moving average.

-- MIN() OVER
--       Minimum in window.

-- MAX() OVER
--       Maximum in window.

-- COUNT() OVER
--       Count in window.

-- STDDEV_SAMP() OVER
--       Sample standard deviation.

-- STDDEV_POP() OVER
--       Population standard deviation.

-- VAR_SAMP() OVER
--       Sample variance.

-- VAR_POP() OVER
--       Population variance.


-- ================================================================
-- 60. THE MOST IMPORTANT PATTERNS TO MEMORIZE
-- ================================================================

-- 1. Total for every row:
-- SUM(x) OVER ()

-- 2. Total per group:
-- SUM(x) OVER (PARTITION BY group_col)

-- 3. Ranking:
-- ROW_NUMBER() OVER (ORDER BY x DESC)

-- 4. Ranking inside groups:
-- ROW_NUMBER() OVER (
--     PARTITION BY group_col
--     ORDER BY x DESC
-- )

-- 5. Previous row:
-- LAG(x) OVER (ORDER BY date_col)

-- 6. Next row:
-- LEAD(x) OVER (ORDER BY date_col)

-- 7. Running total:
-- SUM(x) OVER (
--     ORDER BY date_col
--     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
-- )

-- 8. Moving average:
-- AVG(x) OVER (
--     ORDER BY date_col
--     ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
-- )

-- 9. Top N per group:
-- ROW_NUMBER() OVER (
--     PARTITION BY group_col
--     ORDER BY x DESC
-- )
-- then WHERE rn <= N in a CTE/subquery.

-- 10. Percentage of group total:
-- x * 100.0 /
-- SUM(x) OVER (PARTITION BY group_col)


-- ================================================================
-- END OF NOTES
-- ================================================================
-- Recommended learning order:
--
-- 1. OVER()
-- 2. PARTITION BY
-- 3. ORDER BY
-- 4. SUM/AVG/MIN/MAX/COUNT OVER
-- 5. ROW_NUMBER
-- 6. RANK
-- 7. DENSE_RANK
-- 8. LAG
-- 9. LEAD
-- 10. FIRST_VALUE / LAST_VALUE / NTH_VALUE
-- 11. Running totals
-- 12. ROWS / RANGE
-- 13. Moving averages
-- 14. NTILE
-- 15. PERCENT_RANK / CUME_DIST
-- 16. Statistical functions
-- 17. CTE + window functions
-- 18. Real business problems
-- ================================================================
