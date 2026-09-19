-- SQL = Structured Query Language.
/*
2. Database vs DBMS vs SQL

A database is where data is stored.

Example:

Company Database
│
├── employees
├── customers
├── orders
├── products
└── departments

DBMS = Database Management System

It is software used to create, manage and access databases.

Examples:

PostgreSQL
MySQL
Oracle
SQL Server
SQLite
SQL

SQL is the language used to communicate with the DBMS.


SQL Commands are-:

1. DDL = Data Definition Language

DDL is used to define or change the structure of database objects.

## Create command
*/
create database company;

-- create also used to create tables

create table employees(
    employee_id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- there are various datatypes read if you want from web

-- ## ALTER TABLE COMMAND

--ADD Column

alter table employees
add column email varchar(50);

-- Rename column using alter

alter table employees
rename column email to employee_email;

-- alter data type

alter table employees
alter column employee_email type varchar(80);

-- alter rename table

ALTER TABLE employees
RENAME TO employees_data;

-- ALTER TABLE - ADD CONSTRAINT

ALTER TABLE employees_data
ADD CONSTRAINT pk_email primary key(employee_email);

-- Alter drop column

alter table employees_data
drop column name;

-- TRUNCATE command-:
-- Removes all rows from a table but keeps the table structure

truncate table employees_data; 

-- drop vs truncate 
-- drop remove or delete the whole table 
-- truncate removes all rows but keep table structure or columns


-- DML COMMANDS
-- DML = Data Manipulation Language
-- It deals with data inside the tables

-- # INSERT COMMAND-: Used to insert data 

INSERT INTO employees_data
(employee_id, department, salary,employee_email)
VALUES
(2, 'HR', 45000,'sa@gmail.com'),
(3,'IT', 60000,'ga@gamil.com'),
(4,'Sales', 55000,'fa@gamil.com');

-- so moving to next DML command we have to learn about select which is DQL Command
-- DQL = Data query language

select * from employees_data; -- * used to select all rows and column from the table

-- selecting few columns

select employee_id,department from employees_data;

-- So now back to DML COMMANDS-: UPDATE is Used to modify existing records.

UPDATE employees_data
SET salary = 60000
WHERE employee_id = 2;

-- Delete command -: it delete specific row

delete from employees_data
where employee_id = 3;


