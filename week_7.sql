USE employees; 

SELECT * FROM employees WHERE birth_date < ('1965-01-01');

SELECT * FROM (
	SELECT * 
    FROM employees
	WHERE gender = 'F' 
	AND  hire_date >= ('1990-01-01')
	ORDER BY emp_no DESC LIMIT 20
) sub
ORDER BY emp_no ASC;

SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE 'F%'  
LIMIT 50;

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
VALUES (100, '2000-01-01','Micah', 'Romero', 'F', '2020-01-02');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
VALUES (101, '2001-01-01','Kyle', 'Stevenson', 'M', '2020-01-03');
INSERT INTO employees (emp_no, birth_date, first_name,last_name,gender,hire_date) 
VALUES (102, '2002-01-01','Rayan', 'Williams', 'M', '2020-01-04');

SELECT *
FROM employees 
WHERE emp_no = 100 OR emp_no = 101 OR emp_no = 102;

UPDATE employees
SET first_name = 'Bob'
WHERE emp_no = 10023;

SELECT *
FROM employees 
WHERE emp_no = 10023;

-- disable first the sql safe update mode and set to 0 to allow update on sql
SET SQL_SAFE_UPDATES = 0;

UPDATE employees
SET hire_date = ('2002-01-01')
WHERE last_name LIKE 'P%' OR first_name LIKE 'P%';

SELECT * FROM (
	SELECT *
	FROM employees 
	WHERE last_name LIKE 'P%' OR first_name LIKE 'P%'
	ORDER BY emp_no DESC LIMIT 20
) sub
ORDER BY emp_no ASC;

DELETE FROM employees
WHERE emp_no < 10000;

SELECT *
FROM employees 
WHERE emp_no < 10000;

DELETE FROM employees 
WHERE emp_no = 10048;

DELETE FROM employees 
WHERE emp_no = 10099;

DELETE FROM employees 
WHERE emp_no = 10234;

DELETE FROM employees 
WHERE emp_no = 20089;

SELECT *
FROM employees
WHERE emp_no = 10048 OR emp_no = 10099 OR emp_no = 10234 OR emp_no = 20089;