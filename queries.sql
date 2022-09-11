-- Employer number, last and first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

-- First and last name, hire date of employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date::text LIKE '1986%'; 

-- Manager department number, department name, employee number, last and first name
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_managers dep_m
ON e.emp_no = dep_m.emp_no
INNER JOIN departments d
ON dep_m.dept_no = d.dept_no;

-- department number for each employee, employee number,
-- last name, first name, and department name
SELECT e.emp_no, d.dept_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_managers dep_m
ON e.emp_no = dep_m.emp_no
INNER JOIN departments d
ON dep_m.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their 
-- employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
LEFT JOIN dept_managers dep_m
ON e.emp_no = dep_m.emp_no
LEFT JOIN departments d
ON dep_m.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the sales and Development departments, 
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_managers dep_m
ON e.emp_no = dep_m.emp_no
LEFT JOIN departments d
ON dep_m.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- List the frequency counts in descending order, of all the employees last names 
-- (how many employees share each last name)
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name;