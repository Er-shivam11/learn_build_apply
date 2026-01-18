-- Departments
INSERT INTO departments (dept_name, location) VALUES
('Engineering', 'New York'),
('HR', 'London'),
('Marketing', 'San Francisco');

-- Employees
INSERT INTO employees (first_name, last_name, email, hire_date, dept_id) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '2022-01-15', 1),
('Bob', 'Smith', 'bob.smith@example.com', '2021-03-20', 1),
('Charlie', 'Brown', 'charlie.brown@example.com', '2020-06-10', 2),
('Diana', 'Prince', 'diana.prince@example.com', '2019-09-05', 3);

-- Salaries
INSERT INTO salaries (emp_id, amount, from_date, to_date) VALUES
(1, 75000, '2022-01-15', NULL),
(2, 68000, '2021-03-20', NULL),
(3, 50000, '2020-06-10', NULL),
(4, 90000, '2019-09-05', NULL);
