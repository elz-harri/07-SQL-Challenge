-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
ORDER BY hire_date DESC;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dpt.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS dpt
ON (dm.dept_no = dpt.dept_no)
INNER JOIN employees AS e
ON (dm.emp_no = e.emp_no);

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.