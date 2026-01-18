-- Table 1: departments
CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

-- Table 2: employees
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    dept_id INT REFERENCES departments(dept_id)
);

-- Table 3: salaries
CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,
    emp_id INT REFERENCES employees(emp_id),
    amount NUMERIC(10,2) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE
);
