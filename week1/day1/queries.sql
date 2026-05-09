1--
    SELECT * 
FROM employees;
2---
SELECT name, salary 
FROM employees;
3--
SELECT *
FROM employees
WHERE age >30;
4--
SELECT name 
FROM department table
0;
5--
SELECT * 
FROM employees
WHERE department = 'IT';
;
6--
SELECT * 
FROM employees
WHERE name LIKE 'j%';
7--
SELECT * 
FROM employees
WHERE name LIKE '%e';
8--
SELECT * 
FROM employees
WHERE name LIKE '%a%';
9--SELECT * 
FROM employees
WHERE LENGTH(name) = 9;
10--
SELECT * 
FROM employees
WHERE name LIKE '_o%';
