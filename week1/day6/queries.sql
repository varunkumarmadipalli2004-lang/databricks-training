51--
SELECT DISTINCT salary 
FROM Employee 
ORDER BY salary DESC 
LIMIT 1 OFFSET 2;
52--
SELECT * FROM Employee 
WHERE age > ALL (
    SELECT age FROM Employee 
    WHERE department_id = (SELECT department_id FROM Department WHERE name = 'HR')
);
53--
SELECT * FROM Department 
WHERE department_id IN (
    SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000
);
54--
SELECT * FROM Employee 
WHERE department_id IN (
    SELECT department_id FROM Project GROUP BY department_id HAVING COUNT(*) >= 2
);
55--
SELECT * FROM Employee 
WHERE hire_date = (SELECT hire_date FROM Employee WHERE name = 'Jane Smith')
  AND name <> 'Jane Smith';
56--
SELECT SUM(salary) AS total_salary 
FROM Employee 
WHERE hire_date LIKE '2020%';
57--
SELECT department_id, AVG(salary) AS average_salary 
FROM Employee 
GROUP BY department_id 
ORDER BY average_salary DESC;
58--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;
59--
SELECT * FROM Employee 
WHERE hire_date >= CURRENT_DATE - INTERVAL '2 year' 
ORDER BY hire_date;
60--
SELECT department_id, COUNT(*) AS employee_count, AVG(salary) AS average_salary 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(*) > 2;
61--
SELECT e1.name, e1.salary 
FROM Employee e1
WHERE e1.salary > (SELECT AVG(e2.salary) FROM Employee e2 WHERE e2.department_id = e1.department_id);
62--
SELECT name 
FROM Employee 
WHERE hire_date = (
    SELECT hire_date FROM Employee WHERE age = (SELECT MAX(age) FROM Employee)
);
63--
SELECT d.name AS department_name, COUNT(p.project_id) AS project_count 
FROM Department d
LEFT JOIN Project p ON d.department_id = p.department_id
GROUP BY d.department_id, d.name
ORDER BY project_count;
64--
SELECT e1.name, e1.department_id, e1.salary 
FROM Employee e1
WHERE e1.salary = (SELECT MAX(e2.salary) FROM Employee e2 WHERE e2.department_id = e1.department_id);
65--
SELECT e1.name, e1.salary 
FROM Employee e1
WHERE e1.age > (SELECT AVG(e2.age) FROM Employee e2 WHERE e2.department_id = e1.department_id);



