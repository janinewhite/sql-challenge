-- Definition for the last salary date for each employee saved as View employees_last_salary_date
-- SELECT 
-- 	emp_no,
--     MAX(to_date) AS last_salary_date 
-- FROM salaries 
-- GROUP BY emp_no;

-- Definition for the last salaries received by each employee saved as View employees_last_salary
SELECT emp_no, salary 
FROM 

-- Definition for management position for each manager saved as View current_managers
SELECT dept_no, emp_no, 

--  1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no AS employee, last_name, first_name, gender, salary 
FROM employees LEFT JOIN employees_last_salary 
ON employees.emp_no = employees_last_salary.emp_no
ORDER BY last_name, first_name, employee;

-- 2. List employees who were hired in 1986.

SELECT emp_no, last_name, first_name, hire_date 
FROM employees 
WHERE date_part('year', hire_date) = 1986
ORDER BY hire_date ASC

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
