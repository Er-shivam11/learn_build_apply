use de_interview_db;
USE SCHEMA CORE;
select * from employees;
select * from departments;
select * from salaries;
-- =========================
-- READY FOR INTERVIEW PRACTICE
-- =========================
-- 1. Select name and salary from employees table.
select name,salary from employees;
-- 2. Select all columns from employees table.
select * from employees;
-- 3. Retrieve employees with salary greater than 50000.
select name from employees where salary>50000;
-- 4. Find all distinct departments in employees table.
select distinct department from employees;
-- 5. Sort employees by salary in descending order.
select name,salary from employees order by salary desc;
-- 6. Get top 3 rows from employees table.
select * from employees limit 3;
-- 7. Count total number of employees.
select count(*) from employees;
-- 8. Find total sum of all salaries.
select sum(salary) from employees;
-- 9. Find average salary of employees.
select avg(salary) from employees;
-- 10. Find maximum salary in employees table.
select max(salary) from employees;

-- 11. Find minimum salary in employees table.
select min(salary) from employees;

-- 12. Get count of employees in each department.
select count(*) from employees group by department;
-- 13. Find departments where average salary is greater than 50000.
-- DOUBTFULL EXPLAIN WHAT WRONG
select department from employees where avg(salary)>50000;
-- 14. Find employees whose name starts with 'S'.
select name from employees where STARTSWITH(NAME,'S');
-- 15. Find employees belonging to IT or HR departments.
SELECT NAME FROM EMPLOYEES WHERE DEPARTMENT='IT' OR DEPARTMENT='HR';
-- 16. Find employees with salary between 40000 and 60000.
SELECT NAME,SALARY FROM EMPLOYEES WHERE SALARY BETWEEN '40000' AND '60000';
-- 17. Find employees with NULL manager_id.
SELECT NAME FROM EMPLOYEES WHERE MANAGER_ID IS NULL;
-- 18. Categorize employees as HIGH or LOW salary using CASE.
SELECT NAME,
CASE 
WHEN SALARY>50000 THEN 'HIGH'
WHEN SALARY<50000 THEN 'LOW'
END AS SALARY FROM EMPLOYEES;

-- 19. Perform INNER JOIN between two tables on matching id.
SELECT * FROM EMPLOYEES E INNER JOIN ORDERS O ON E.EMP_ID=O.EMP_ID;
-- 20. Perform LEFT JOIN between two tables.
SELECT * FROM EMPLOYEES E LEFT JOIN ORDERS O ON E.EMP_ID=O.EMP_ID;
-- 21. Perform RIGHT JOIN between two tables.
SELECT * FROM EMPLOYEES E RIGHT JOIN ORDERS O ON E.EMP_ID=O.EMP_ID;
-- 22. Perform FULL OUTER JOIN between two tables.
SELECT * FROM EMPLOYEES E FULL OUTER JOIN ORDERS O ON E.EMP_ID=O.EMP_ID;
-- 23. Perform CROSS JOIN between two tables.
SELECT * FROM EMPLOYEES E CROSS JOIN ORDERS O;
-- 24. Perform SELF JOIN on employees table to find manager-employee relation.
SELECT * FROM EMPLOYEES E INNER JOIN EMPLOYEES M ON E.EMP_ID=M.MANAGER_ID;

-- 25. Combine results of two tables using UNION.
SELECT department
FROM employees
UNION 
SELECT department
FROM departments;
-- 26. Combine results of two tables using UNION ALL.
SELECT department
FROM employees
UNION ALL
SELECT department
FROM departments;


-- 27. Write a query using a subquery to filter based on aggregated value.
-- 28. Use EXISTS to check related records in another table.
-- 29. Use ANY to compare salary with HR department salaries.
-- 30. Use ALL to compare salary with all HR department salaries.
-- 31. Create a new table named student.
-- 32. Insert a record into student table.
-- 33. Update a record in student table.
-- 34. Delete a record from student table.
-- 35. Define a PRIMARY KEY in a table.
-- 36. Define a FOREIGN KEY relationship between tables.
-- 37. Create a VIEW for high salary employees.
-- 38. Create an INDEX on a column.
-- 39. Assign row numbers to employees based on salary.
-- 40. Rank employees by salary using RANK().
-- 41. Rank employees by salary using DENSE_RANK().
-- 42. Use PARTITION BY with ranking by department.
-- 43. Use LEAD function to get next salary.
-- 44. Use LAG function to get previous salary.
-- 45. Create a CTE for high earning employees.
-- 46. Find the second highest salary.
-- 47. Find the Nth highest salary.
-- 48. Find duplicate records in employees table.
-- 49. Delete duplicate records while keeping one entry.
-- 50. Replace NULL values using COALESCE.
-- 51. Use NULLIF to handle identical values.
-- 52. Convert names to uppercase using UPPER().
-- 53. Convert names to lowercase using LOWER().
-- 54. Find length of employee names.
-- 55. Get current date.
-- 56. Get current date and time.
-- 57. Get top 3 salaries from employees.
-- 58. Calculate age of employees from date of birth.
-- 59. Find employees who have no orders.
-- 60. Find highest paid employee in each department.
