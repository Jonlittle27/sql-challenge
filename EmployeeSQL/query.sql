SELECT e.emp_no, e.last_name,
e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE cast(hire_date as varchar) LIKE '1986%';

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM employees as e
JOIN dept_managers as m
ON e.emp_no = m.emp_no
JOIN departments as d
ON m.dept_no = d.dept_no;

SELECT first_name, last_name
FROM employees
where first_name = 'Hercules'
AND last_name like 'B%';

SELECT d.dept_name,de.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_employees as de
ON d.dept_no = de.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales';

SELECT d.dept_name,de.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_employees as de
ON d.dept_no = de.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT last_name, count(last_name)
FROM employees
group by last_name
order by count(last_name) desc