-- Bonus

-- 2. Create a histogram to visualize the most common salary ranges for employees.

-- View employee_salary_ranges
SELECT 
	s.emp_no, 
	title, 
	AVG(salary) AS avg_salary, 
	MIN(salary) AS min_salary, 
	MAX(salary) AS max_salary, 
	MAX(salary)-MIN(salary) AS salary_range
FROM salaries AS s LEFT JOIN titles AS t 
	ON s.emp_no = t.emp_no
GROUP BY s.emp_no, title
;

-- 3. Create a bar chart of average salary by title.

-- View title_salary_analysis
SELECT 
	title, 
	ROUND(AVG(salary),2) AS avg_salary, 
	MIN(salary) AS min_salary, 
	MAX(salary) AS max_salary, 
	MAX(salary)-MIN(salary) AS salary_range,
	ROUND(STDDEV_SAMP(salary),2) AS std_salary, 
	ROUND(VAR_SAMP(salary),2) AS var_salary,
	COUNT(s.emp_no) AS num_salaries
FROM salaries AS s LEFT JOIN titles AS t 
	ON s.emp_no = t.emp_no
GROUP BY title
;

-- View title_salary_analysis_annual
SELECT 
	title, 
	ROUND(AVG(salary),2) AS avg_salary, 
	MIN(salary) AS min_salary, 
	MAX(salary) AS max_salary, 
	MAX(salary)-MIN(salary) AS salary_range,
	ROUND(STDDEV_SAMP(salary),2) AS std_salary, 
	ROUND(VAR_SAMP(salary),2) AS var_salary,
	COUNT(s.emp_no) AS num_salaries
FROM salaries AS s LEFT JOIN titles AS t 
	ON s.emp_no = t.emp_no
GROUP BY title
;