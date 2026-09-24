/*
============================================================
SQL JOINS + SET OPERATIONS
Complete Practice File - Beginner to Advanced
PostgreSQL

HOW TO USE THIS FILE
--------------------
1. Run the CREATE TABLE section.
2. Immediately after each CREATE TABLE, its INSERT data is given.
3. Then practice the questions from top to bottom.
4. Read the comments before each query.
5. Try writing the query yourself before checking the answer.

MAIN TOPICS
-----------
JOIN TYPES:
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- CROSS JOIN
- SELF JOIN
- NATURAL JOIN
- Multiple-table JOINs

SET OPERATIONS:
- UNION
- UNION ALL
- INTERSECT
- EXCEPT
============================================================
*/


-- =========================================================
-- PART 1: DEPARTMENTS TABLE
-- =========================================================

-- A department stores information about company departments.

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);


-- Insert department data immediately after creating the table.

INSERT INTO departments (department_id, department_name, location)
VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Bangalore'),
(5, 'Sales', 'Chandigarh'),
(6, 'Research', 'Pune');


-- See the data.

SELECT *
FROM departments;


-- =========================================================
-- PART 2: EMPLOYEES TABLE
-- =========================================================

-- An employee belongs to a department.
-- manager_id stores the employee_id of their manager.
-- manager_id = NULL means the employee has no manager.

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    manager_id INT,
    salary NUMERIC(10,2),
    email VARCHAR(100),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


-- Insert employee data immediately after creating the table.

INSERT INTO employees
(employee_id, employee_name, department_id, manager_id, salary, email)
VALUES
(1, 'Rahul', 1, NULL, 90000, 'rahul@company.com'),
(2, 'Aman', 1, 1, 60000, 'aman@company.com'),
(3, 'Priya', 1, 1, 75000, 'priya@company.com'),
(4, 'Rohit', 2, NULL, 70000, 'rohit@company.com'),
(5, 'Neha', 2, 4, 50000, 'neha@company.com'),
(6, 'Vikas', 3, NULL, 85000, 'vikas@company.com'),
(7, 'Simran', 3, 6, 55000, 'simran@company.com'),
(8, 'Karan', NULL, 1, 45000, 'karan@company.com'),
(9, 'Meera', 4, NULL, 65000, 'meera@company.com'),
(10, 'Arjun', 5, 9, 80000, 'arjun@company.com'),
(11, 'Pooja', 5, 10, 52000, 'pooja@company.com'),
(12, 'Dev', NULL, NULL, 40000, 'dev@company.com');


-- See the data.

SELECT *
FROM employees;


-- =========================================================
-- PART 3: CUSTOMERS TABLE
-- =========================================================

-- A customer can place zero, one, or many orders.

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);


-- Insert customer data immediately after creating the table.

INSERT INTO customers (customer_id, customer_name, city, email)
VALUES
(1, 'Amit', 'Delhi', 'amit@gmail.com'),
(2, 'Sneha', 'Mumbai', 'sneha@gmail.com'),
(3, 'Ravi', 'Chandigarh', 'ravi@gmail.com'),
(4, 'Anjali', 'Delhi', 'anjali@gmail.com'),
(5, 'Mohit', 'Pune', 'mohit@gmail.com'),
(6, 'Kavita', 'Jaipur', 'kavita@gmail.com'),
(7, 'Nikhil', 'Mumbai', 'nikhil@gmail.com'),
(8, 'Tanya', 'Delhi', 'tanya@gmail.com');


-- See the data.

SELECT *
FROM customers;


-- =========================================================
-- PART 4: CATEGORIES TABLE
-- =========================================================

-- A category groups similar products together.

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);


-- Insert category data immediately after creating the table.

INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home'),
(5, 'Sports');


-- See the data.

SELECT *
FROM categories;


-- =========================================================
-- PART 5: PRODUCTS TABLE
-- =========================================================

-- Every product belongs to a category.

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price NUMERIC(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


-- Insert product data immediately after creating the table.

INSERT INTO products
(product_id, product_name, category_id, price)
VALUES
(101, 'Laptop', 1, 70000),
(102, 'Mouse', 1, 1000),
(103, 'Keyboard', 1, 2000),
(104, 'T-Shirt', 2, 800),
(105, 'Jeans', 2, 2000),
(106, 'SQL Book', 3, 600),
(107, 'Python Book', 3, 700),
(108, 'Chair', 4, 5000),
(109, 'Football', 5, 1500),
(110, 'Cricket Bat', 5, 3000);


-- See the data.

SELECT *
FROM products;


-- =========================================================
-- PART 6: ORDERS TABLE
-- =========================================================

-- An order connects a customer with a product.
-- quantity tells us how many items were ordered.

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


-- Insert order data immediately after creating the table.

INSERT INTO orders
(order_id, customer_id, product_id, quantity, order_date)
VALUES
(1001, 1, 101, 1, '2026-01-05'),
(1002, 1, 102, 2, '2026-01-10'),
(1003, 2, 104, 3, '2026-01-12'),
(1004, 2, 106, 1, '2026-01-15'),
(1005, 3, 109, 2, '2026-02-01'),
(1006, 4, 103, 1, '2026-02-05'),
(1007, 4, 107, 2, '2026-02-10'),
(1008, 5, 108, 1, '2026-02-15'),
(1009, 5, 110, 2, '2026-03-01'),
(1010, 7, 105, 1, '2026-03-05');


-- See the data.

SELECT *
FROM orders;


-- =========================================================
-- PART 7: INNER JOIN
-- =========================================================

/*
INNER JOIN means:

"Give me only the rows that match in both tables."

Example:
employee.department_id = department.department_id
*/


-- Q1. Show employee name and department name.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id;


-- Q2. Show employee name, department, and salary.

SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id;


-- Q3. Find employees who work in IT.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';


-- Q4. Find employees whose salary is greater than 60000.

SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.salary > 60000;


-- =========================================================
-- PART 8: LEFT JOIN
-- =========================================================

/*
LEFT JOIN means:

"Keep ALL rows from the left table.
If there is no match on the right, show NULL."

Very useful for finding missing/unmatched data.
*/


-- Q5. Show all employees, including employees without a department.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department_id = d.department_id;


-- Q6. Find employees who do not belong to a department.

SELECT
    e.employee_id,
    e.employee_name
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department_id = d.department_id
WHERE d.department_id IS NULL;


-- Q7. Show all departments, including departments with no employees.

SELECT
    d.department_name,
    e.employee_name
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id;


-- Q8. Find departments that have no employees.

SELECT
    d.department_id,
    d.department_name
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;


-- =========================================================
-- PART 9: RIGHT JOIN
-- =========================================================

/*
RIGHT JOIN is the opposite direction of LEFT JOIN.

It keeps ALL rows from the right table.
*/


-- Q9. Show all departments and matching employees.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department_id = d.department_id;


-- Q10. Find departments with no employees.

SELECT
    d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;


-- =========================================================
-- PART 10: FULL OUTER JOIN
-- =========================================================

/*
FULL OUTER JOIN keeps:
- matching rows
- unmatched rows from the left
- unmatched rows from the right
*/


-- Q11. Show all employees and all departments.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d
    ON e.department_id = d.department_id;


-- Q12. Find unmatched employees and unmatched departments.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.employee_id IS NULL
   OR d.department_id IS NULL;


-- =========================================================
-- PART 11: CROSS JOIN
-- =========================================================

/*
CROSS JOIN creates every possible combination.

If table A has 3 rows
and table B has 4 rows,

result = 3 x 4 = 12 rows.
*/


-- Q13. Create every employee-department combination.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
CROSS JOIN departments AS d;


-- Q14. Create every category-product combination.

SELECT
    c.category_name,
    p.product_name
FROM categories AS c
CROSS JOIN products AS p;


-- =========================================================
-- PART 12: SELF JOIN
-- =========================================================

/*
SELF JOIN means joining a table with itself.

Here employees is used twice:

e = employee
m = manager

Relationship:
employee.manager_id = manager.employee_id
*/


-- Q15. Show every employee and their manager.

SELECT
    e.employee_name,
    m.employee_name AS manager_name
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.employee_id;


-- Q16. Find employees who report directly to Rahul.

SELECT
    e.employee_name,
    m.employee_name AS manager_name
FROM employees AS e
INNER JOIN employees AS m
    ON e.manager_id = m.employee_id
WHERE m.employee_name = 'Rahul';


-- Q17. Find employees who do not have a manager.

SELECT
    e.employee_id,
    e.employee_name
FROM employees AS e
WHERE e.manager_id IS NULL;


-- Q18. Find employees whose salary is greater than their manager.

SELECT
    e.employee_name,
    m.employee_name AS manager_name,
    e.salary AS employee_salary,
    m.salary AS manager_salary
FROM employees AS e
INNER JOIN employees AS m
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;


-- Q19. Find employees who earn less than their manager.

SELECT
    e.employee_name,
    m.employee_name AS manager_name,
    e.salary AS employee_salary,
    m.salary AS manager_salary
FROM employees AS e
INNER JOIN employees AS m
    ON e.manager_id = m.employee_id
WHERE e.salary < m.salary;


-- Q20. Show employee department and manager department.

SELECT
    e.employee_name,
    d.department_name AS employee_department,
    m.employee_name AS manager_name,
    md.department_name AS manager_department
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.employee_id
LEFT JOIN departments AS d
    ON e.department_id = d.department_id
LEFT JOIN departments AS md
    ON m.department_id = md.department_id;


-- =========================================================
-- PART 13: NATURAL JOIN
-- =========================================================

/*
NATURAL JOIN automatically joins columns that have
the same name in both tables.

employees and departments both have:
department_id

So SQL automatically uses:
employees.department_id = departments.department_id

IMPORTANT:
NATURAL JOIN is useful for learning, but explicit JOIN ... ON
is usually safer and easier to understand in real projects.
*/


-- Q21. Natural join employees and departments.

SELECT
    employee_name,
    department_name,
    salary
FROM employees
NATURAL JOIN departments;


-- Q22. Natural join products and categories.

SELECT
    product_name,
    category_name,
    price
FROM products
NATURAL JOIN categories;


-- Q23. Natural join and find IT employees.

SELECT
    employee_name,
    department_name,
    salary
FROM employees
NATURAL JOIN departments
WHERE department_name = 'IT';


-- Compare NATURAL JOIN with normal INNER JOIN.

-- NATURAL JOIN:
SELECT
    employee_name,
    department_name
FROM employees
NATURAL JOIN departments;

-- Normal INNER JOIN:
SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id;


-- =========================================================
-- PART 14: MULTIPLE-TABLE JOINS
-- =========================================================

/*
Here we connect:

customers
    |
    v
orders
    |
    v
products
    |
    v
categories

This is a very common real-world pattern.
*/


-- Q24. Show customer, product, quantity, and order date.

SELECT
    c.customer_name,
    p.product_name,
    o.quantity,
    o.order_date
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id;


-- Q25. Show customer, product, category, quantity, and price.

SELECT
    c.customer_name,
    p.product_name,
    cat.category_name,
    o.quantity,
    p.price
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
INNER JOIN categories AS cat
    ON p.category_id = cat.category_id;


-- Q26. Calculate total value of every order.

-- Formula:
-- quantity x price = total order value

SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS total_amount
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id;


-- Q27. Find customers from Delhi who bought Electronics.

SELECT DISTINCT
    c.customer_name
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
INNER JOIN categories AS cat
    ON p.category_id = cat.category_id
WHERE c.city = 'Delhi'
  AND cat.category_name = 'Electronics';


-- Q28. Find customers who bought a product costing more than 5000.

SELECT DISTINCT
    c.customer_name,
    p.product_name,
    p.price
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE p.price > 5000;


-- =========================================================
-- PART 15: JOIN + GROUP BY
-- =========================================================

/*
GROUP BY creates groups.

Example:
Group all employees by department,
then count employees in every department.
*/


-- Q29. Count employees in each department.

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- Q30. Find average salary in each department.

SELECT
    d.department_name,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- Q31. Find departments with more than one employee.

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) > 1;


-- Q32. Find the highest salary in each department.

SELECT
    d.department_name,
    MAX(e.salary) AS highest_salary
FROM departments AS d
INNER JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


-- =========================================================
-- PART 16: CUSTOMER + ORDER ANALYSIS
-- =========================================================

-- Q33. Find total spending by each customer.

SELECT
    c.customer_name,
    COALESCE(SUM(o.quantity * p.price), 0) AS total_spending
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
LEFT JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC;


-- Q34. Find total sales by category.

SELECT
    cat.category_name,
    SUM(o.quantity * p.price) AS total_sales
FROM categories AS cat
INNER JOIN products AS p
    ON cat.category_id = p.category_id
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY cat.category_id, cat.category_name
ORDER BY total_sales DESC;


-- Q35. Find total quantity sold for each product.

SELECT
    p.product_name,
    COALESCE(SUM(o.quantity), 0) AS total_quantity
FROM products AS p
LEFT JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC;


-- Q36. Count orders placed by each customer.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY order_count DESC;


-- Q37. Find customers who placed more than one order.

SELECT
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1;


-- =========================================================
-- PART 17: FIND MISSING / UNMATCHED DATA
-- =========================================================

/*
A very common interview pattern:

LEFT JOIN + WHERE right_table.id IS NULL

This means:
"Find rows that have no matching record."
*/


-- Q38. Find customers who have never placed an order.

SELECT
    c.customer_id,
    c.customer_name
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Q39. Find products that have never been ordered.

SELECT
    p.product_id,
    p.product_name
FROM products AS p
LEFT JOIN orders AS o
    ON p.product_id = o.product_id
WHERE o.order_id IS NULL;


-- =========================================================
-- PART 18: JOIN + HAVING
-- =========================================================

-- Q40. Find customers who spent more than 3000.

SELECT
    c.customer_name,
    SUM(o.quantity * p.price) AS total_spending
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.quantity * p.price) > 3000;


-- Q41. Find categories with total sales greater than 5000.

SELECT
    cat.category_name,
    SUM(o.quantity * p.price) AS total_sales
FROM categories AS cat
INNER JOIN products AS p
    ON cat.category_id = p.category_id
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY cat.category_id, cat.category_name
HAVING SUM(o.quantity * p.price) > 5000;


-- =========================================================
-- PART 19: NOT EXISTS + JOIN
-- =========================================================

/*
NOT EXISTS means:

"Return this row only when the matching row does NOT exist."

It is very useful for questions such as:
- Customers who did not buy a Laptop
- Employees with no matching record
- Customers who never placed a certain type of order
*/


-- Q42. Find customers who did not buy a Laptop.

SELECT
    c.customer_name
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders AS o
    INNER JOIN products AS p
        ON o.product_id = p.product_id
    WHERE o.customer_id = c.customer_id
      AND p.product_name = 'Laptop'
);


-- =========================================================
-- PART 20: ADVANCED SELF JOIN
-- =========================================================

-- Q43. Find employees who work in the same department as Rahul.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN employees AS r
    ON e.department_id = r.department_id
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE r.employee_name = 'Rahul'
  AND e.employee_id <> r.employee_id;


-- Q44. Find pairs of employees working in the same department.

-- e1 and e2 are two copies of the employees table.
-- e1.employee_id < e2.employee_id prevents duplicate pairs.

SELECT
    e1.employee_name AS employee_1,
    e2.employee_name AS employee_2,
    d.department_name
FROM employees AS e1
INNER JOIN employees AS e2
    ON e1.department_id = e2.department_id
   AND e1.employee_id < e2.employee_id
INNER JOIN departments AS d
    ON e1.department_id = d.department_id;


-- =========================================================
-- PART 21: ADVANCED SALARY QUESTIONS
-- =========================================================

-- Q45. Find the employee with the highest salary in each department.

SELECT
    d.department_name,
    e.employee_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees AS e2
    WHERE e2.department_id = e.department_id
);


-- Q46. Find employees earning more than their department average.

SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees AS e2
    WHERE e2.department_id = e.department_id
);


-- Q47. Find the second-highest salary in each department.

SELECT
    d.department_name,
    e.employee_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees AS e2
    WHERE e2.department_id = e.department_id
      AND e2.salary < (
          SELECT MAX(e3.salary)
          FROM employees AS e3
          WHERE e3.department_id = e.department_id
      )
);


-- =========================================================
-- PART 22: SET OPERATIONS
-- =========================================================

/*
SET OPERATIONS combine the results of SELECT queries.

UNION
------
Combines results and removes duplicates.

UNION ALL
----------
Combines results and keeps duplicates.

INTERSECT
---------
Returns rows that exist in BOTH results.

EXCEPT
------
Returns rows from the FIRST query that are not
present in the SECOND query.

IMPORTANT:
Both SELECT queries must return the same number
of columns in compatible positions.
*/


-- =========================================================
-- PART 23: UNION
-- =========================================================

/*
UNION:
Combine two result sets.
Duplicate rows are removed.
*/


-- Q48. Combine employee names and customer names.

SELECT employee_name AS person_name
FROM employees

UNION

SELECT customer_name AS person_name
FROM customers;


-- Q49. Combine employees from IT and HR.

SELECT employee_name
FROM employees
WHERE department_id = 1

UNION

SELECT employee_name
FROM employees
WHERE department_id = 2;


-- Q50. Combine Delhi and Mumbai customers.

SELECT customer_name, city
FROM customers
WHERE city = 'Delhi'

UNION

SELECT customer_name, city
FROM customers
WHERE city = 'Mumbai';


-- Q51. Nobel-style UNION example:
-- Physics winners from 1970
-- PLUS Economics winners from 1971.
--
-- This is the pattern:
--
-- SELECT year, subject, winner, country, category
-- FROM nobel_win
-- WHERE year = 1970
--   AND subject = 'Physics'
--
-- UNION
--
-- SELECT year, subject, winner, country, category
-- FROM nobel_win
-- WHERE year = 1971
--   AND subject = 'Economics';


-- =========================================================
-- PART 24: UNION ALL
-- =========================================================

/*
UNION ALL:
Combine two result sets.
Duplicates are NOT removed.
*/


-- Q52. Combine IT employees twice and keep duplicates.

SELECT employee_name
FROM employees
WHERE department_id = 1

UNION ALL

SELECT employee_name
FROM employees
WHERE department_id = 1;


-- Q53. Compare UNION and UNION ALL.

-- UNION removes duplicate rows.
SELECT employee_name
FROM employees
WHERE department_id = 1

UNION

SELECT employee_name
FROM employees
WHERE department_id = 1;


-- UNION ALL keeps duplicate rows.
SELECT employee_name
FROM employees
WHERE department_id = 1

UNION ALL

SELECT employee_name
FROM employees
WHERE department_id = 1;


-- =========================================================
-- PART 25: INTERSECT
-- =========================================================

/*
INTERSECT:
Give me values that exist in BOTH query results.
*/


-- Q54. Find names that exist in both employees and customers.

SELECT employee_name AS name
FROM employees

INTERSECT

SELECT customer_name AS name
FROM customers;


-- Q55. Find cities that exist both as customer cities
-- and department locations.

SELECT city
FROM customers

INTERSECT

SELECT location
FROM departments;


-- =========================================================
-- PART 26: EXCEPT
-- =========================================================

/*
EXCEPT:
Give me rows from the FIRST query
that do not exist in the SECOND query.

A EXCEPT B
means:
A but NOT B.
*/


-- Q56. Find employee names that are not customer names.

SELECT employee_name AS name
FROM employees

EXCEPT

SELECT customer_name AS name
FROM customers;


-- Q57. Find customer cities that are not department locations.

SELECT city
FROM customers

EXCEPT

SELECT location
FROM departments;


-- Q58. Find department locations that are not customer cities.

SELECT location
FROM departments

EXCEPT

SELECT city
FROM customers;


-- =========================================================
-- PART 27: SET OPERATIONS + ORDER BY
-- =========================================================

/*
When using ORDER BY with UNION/UNION ALL/etc.,
put ORDER BY at the END of the complete query.
*/


-- Q59. Combine IT and HR employees and sort by name.

SELECT employee_name AS name
FROM employees
WHERE department_id = 1

UNION

SELECT employee_name AS name
FROM employees
WHERE department_id = 2

ORDER BY name;


-- =========================================================
-- PART 28: JOIN + SET OPERATIONS
-- =========================================================

-- Q60. Find employees in IT or HR using UNION.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT'

UNION

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE d.department_name = 'HR';


-- Q61. The same result can be written more simply with IN.

SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
WHERE d.department_name IN ('IT', 'HR');


-- =========================================================
-- PART 29: JOIN + CASE
-- =========================================================

/*
CASE works like IF / ELSE.

Here we classify employees by salary.
*/


-- Q62. Create salary levels.

SELECT
    e.employee_name,
    d.department_name,
    e.salary,
    CASE
        WHEN e.salary >= 80000 THEN 'High'
        WHEN e.salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department_id = d.department_id;


-- =========================================================
-- PART 30: JOIN + DATE FILTER
-- =========================================================

-- Q63. Find orders placed during February 2026.

SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.order_date
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.order_date >= '2026-02-01'
  AND o.order_date < '2026-03-01';


-- =========================================================
-- PART 31: BIG 4-TABLE JOIN
-- =========================================================

/*
This is an important real-world JOIN.

customers
    ↓
orders
    ↓
products
    ↓
categories

We can answer:
"Which customer bought which product,
from which category, and how much did they spend?"
*/


-- Q64. Show complete order information.

SELECT
    c.customer_name,
    p.product_name,
    cat.category_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS total_value,
    o.order_date
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
INNER JOIN categories AS cat
    ON p.category_id = cat.category_id
ORDER BY o.order_date;


-- Q65. Find total revenue by city.

SELECT
    c.city,
    SUM(o.quantity * p.price) AS total_revenue
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;


-- Q66. Find the product with the highest total quantity sold.

SELECT
    p.product_name,
    SUM(o.quantity) AS total_quantity
FROM products AS p
INNER JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 1;


-- =========================================================
-- PART 32: QUICK CHEAT SHEET
-- =========================================================

/*
============================================================
JOIN CHEAT SHEET
============================================================

1. INNER JOIN
--------------
Only matching rows.

SELECT *
FROM A
INNER JOIN B
    ON A.id = B.id;


2. LEFT JOIN
-------------
ALL rows from A + matching rows from B.

SELECT *
FROM A
LEFT JOIN B
    ON A.id = B.id;


3. RIGHT JOIN
--------------
ALL rows from B + matching rows from A.

SELECT *
FROM A
RIGHT JOIN B
    ON A.id = B.id;


4. FULL OUTER JOIN
------------------
ALL rows from both tables.

SELECT *
FROM A
FULL OUTER JOIN B
    ON A.id = B.id;


5. CROSS JOIN
-------------
Every possible combination.

SELECT *
FROM A
CROSS JOIN B;


6. SELF JOIN
------------
A table joined with itself.

Example:
employee + manager

ON e.manager_id = m.employee_id


7. NATURAL JOIN
---------------
Automatically joins same-named columns.

SELECT *
FROM employees
NATURAL JOIN departments;

Use carefully because the join depends on column names.


============================================================
SET OPERATIONS CHEAT SHEET
============================================================

UNION
-----
Combines results.
Removes duplicate rows.

A
UNION
B


UNION ALL
---------
Combines results.
Keeps duplicate rows.

A
UNION ALL
B


INTERSECT
---------
Only rows common to A and B.

A
INTERSECT
B


EXCEPT
------
Rows in A but not in B.

A
EXCEPT
B


============================================================
EASY MEMORY TRICK
============================================================

JOIN
----
"Combine related TABLES."

SET OPERATION
-------------
"Combine results/ROWS."

INNER JOIN
----------
Only matching rows.

LEFT JOIN
---------
Keep everything from LEFT.

RIGHT JOIN
----------
Keep everything from RIGHT.

FULL JOIN
---------
Keep everything from BOTH.

CROSS JOIN
----------
Every possible combination.

SELF JOIN
---------
Table joins itself.

NATURAL JOIN
------------
Join automatically using same column names.

UNION
-----
Combine + remove duplicates.

UNION ALL
---------
Combine + keep duplicates.

INTERSECT
---------
Common rows.

EXCEPT
------
First result minus second result.


============================================================
COMMON INTERVIEW PATTERNS
============================================================

Find records with no match:
----------------------------
LEFT JOIN
WHERE right_table.id IS NULL


Compare employee with manager:
------------------------------
SELF JOIN
ON e.manager_id = m.employee_id


Count related records:
----------------------
COUNT(child.id)


Filter groups:
--------------
HAVING COUNT(child.id) > 1


Find records where something does NOT exist:
--------------------------------------------
NOT EXISTS (...)


Multiple tables:
----------------
A
JOIN B
JOIN C
JOIN D


============================================================
LEARNING ORDER
============================================================

BEGINNER
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN
5. CROSS JOIN

INTERMEDIATE
6. SELF JOIN
7. NATURAL JOIN
8. JOIN + WHERE
9. JOIN + GROUP BY
10. JOIN + HAVING
11. JOIN + COUNT/SUM/AVG/MAX/MIN

ADVANCED
12. Multiple-table JOIN
13. SELF JOIN salary comparison
14. NOT EXISTS
15. Subqueries with JOIN
16. Highest salary per department
17. Second-highest salary per department
18. JOIN + CASE

SET OPERATIONS
19. UNION
20. UNION ALL
21. INTERSECT
22. EXCEPT
23. JOIN + SET OPERATIONS

============================================================
END OF SQL JOINS + SET OPERATIONS PRACTICE FILE
============================================================
