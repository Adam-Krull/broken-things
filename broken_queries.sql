#Select statement
SELECT emp_no, birth_date,
first_name, last_name,
gender, hire_date,
FROM employees
LIMIT 50;

#Where clause
SELECT *
FROM employees
WHERE hire_date
LIMIT 50;

SELECT *
FROM employees
WHERE hire_date < 1995
AND hire_date > 1980
LIMIT 50;

#Group by
SELECT emp_no,
FROM employees
GROUP BY emp_no
LIMIT 50;

SELECT emp_no, COUNT(*)
FROM employees
LIMIT 50;

#Joins
SELECT *
FROM employees
JOIN salaries
LIMIT 50;

SELECT *
FROM employees
JOIN salaries USING emp_no
LIMIT 50;

#Subqueries
SELECT *
FROM employees
WHERE
	(SELECT emp_no
	 FROM dept_manager)
LIMIT 50;

#Case statements
SELECT
	CASE
		WHEN first_name LIKE 'A%' THEN 1
		ELSE 0
FROM employees
LIMIT 50;

SELECT
	CASE
		WHEN first_name LIKE 'A%' THEN 'A'
		WHEN first_name LIKE 'B%'
		WHEN first_name LIKE 'C%' THEN 'C'
	END AS abcs
FROM employees
LIMIT 50;

#Temp tables
CREATE TEMPORARY TABLE usernames(
	SELECT emp_no,
		   CONCAT(SUBSTR(first_name, 1, 3), '_', SUBSTR(last_name, 1, 4)) AS username
	FROM employees
	LIMIT 50
);