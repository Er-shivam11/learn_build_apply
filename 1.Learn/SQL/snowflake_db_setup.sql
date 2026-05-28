-- =========================
-- 1. CREATE DATABASE
-- =========================
CREATE DATABASE IF NOT EXISTS DE_INTERVIEW_DB;

-- =========================
-- 2. USE DATABASE
-- =========================
USE DATABASE DE_INTERVIEW_DB;

-- =========================
-- 3. CREATE SCHEMA
-- =========================
CREATE SCHEMA IF NOT EXISTS CORE;

USE SCHEMA CORE;

-- =========================
-- 4. CREATE TABLES
-- =========================
-- =========================================
-- DATA ENGINEERING SQL PRACTICE DATABASE
-- =========================================


-- =========================================
-- DROP TABLES (Optional)
-- =========================================

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;


-- =========================================
-- 1. CREATE EMPLOYEES TABLE
-- =========================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT,
    dob DATE
);


-- =========================================
-- 2. CREATE DEPARTMENTS TABLE
-- =========================================

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(50)
);


-- =========================================
-- 3. CREATE ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    emp_id INT,
    order_amount INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


-- =========================================
-- 4. CREATE STUDENT TABLE
-- =========================================

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);


-- =========================================
-- INSERT INTO EMPLOYEES
-- =========================================

INSERT INTO employees VALUES
(101, 'Amit',    'IT',       75000, NULL, '1998-04-12'),
(102, 'Sneha',   'HR',       50000, 101,  '1997-08-21'),
(103, 'Rahul',   'Finance',  65000, 101,  '1995-02-15'),
(104, 'Simran',  'IT',       85000, 101,  '1996-10-30'),
(105, 'Vikram',  'Sales',    45000, 103,  '1999-07-18'),
(106, 'Saurabh', 'HR',       55000, 102,  '1998-12-01'),
(107, 'Karan',   'Finance',  70000, 103,  '1994-05-11'),
(108, 'Anjali',  'Sales',    48000, 105,  '2000-03-25'),
(109, 'Sonia',   'IT',       85000, 104,  '1997-09-09'),
(110, 'Priya',   'IT',       NULL,  104,  '1998-01-20'),

-- Duplicate practice row
(111, 'Rahul',   'Finance',  65000, 101,  '1995-02-15');


-- =========================================
-- INSERT INTO DEPARTMENTS
-- =========================================

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');


-- =========================================
-- INSERT INTO ORDERS
-- =========================================

INSERT INTO orders VALUES
(1001, 101, 5000),
(1002, 102, 7000),
(1003, 104, 12000),
(1004, 107, 9000),
(1005, 109, 15000);


-- =========================================
-- INSERT INTO STUDENT
-- =========================================

INSERT INTO student VALUES
(1, 'Rohit', 85),
(2, 'Meena', 92),
(3, 'Arjun', 76);


-- =========================================
-- VERIFY DATA
-- =========================================

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM orders;
SELECT * FROM student;