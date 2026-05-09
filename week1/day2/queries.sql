11--
SELECT *
FROM employees
WHERE hire_date between '2020-01-01' and '2020-12-31';
12--
SELECT *
FROM employees 
WHERE MONTH(hire_date) = 1;
13--
SELECT *
FROM employees 
WHERE hire_date < '2019-01-01';
14--
SELECT *
FROM employees
WHERE hire_date >= '2021-03-01';
15--
SELECT *
FROM employees
WHERE YEAR(hire_date) >= 2023;
16--
SELECT SUM(salary) AS total_salary
FROM employees;
17--
SELECT AVG(salary) AS average_salary
FROM employees;
18--
SELECT MIN(salary) AS minimum_salary
FROM employees;
19--
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
20--
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;



