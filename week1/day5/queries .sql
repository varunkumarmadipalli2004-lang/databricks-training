41--
SELECT e.* FROM Employee e
LEFT JOIN Project p ON e.department_id = p.department_id
WHERE p.project_id IS NULL;
42--
SELECT e.name AS employee_name, COUNT(p.project_id) AS project_count 
FROM Employee e
LEFT JOIN Project p ON e.department_id = p.department_id
GROUP BY e.emp_id, e.name;
43--
SELECT d.* FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;
44--
SELECT name 
FROM Employee 
WHERE department_id = (SELECT department_id FROM Employee WHERE name = 'John Doe')
  AND name <> 'John Doe';
45--
SELECT d.name 
FROM Department d
INNER JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.department_id, d.name
ORDER BY AVG(e.salary) DESC 
LIMIT 1;
46--
SELECT * FROM Employee 
WHERE salary = (SELECT MAX(salary) FROM Employee);
47--
SELECT * FROM Employee 
WHERE salary > (SELECT AVG(salary) FROM Employee);
48--
SELECT MAX(salary) 
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);
49--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;
50--
SELECT e1.* FROM Employee e1
WHERE e1.salary > (SELECT AVG(e2.salary) FROM Employee e2 WHERE e2.department_id = e1.department_id);
