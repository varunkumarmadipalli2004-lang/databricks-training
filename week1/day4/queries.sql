31--
SELECT * FROM Employee 
ORDER BY salary ASC; 
32--
SELECT * FROM Employee 
ORDER BY age DESC; 
33--
SELECT * FROM Employee 
ORDER BY hire_date ASC; 
34--
SELECT * FROM Employee 
ORDER BY department_id, salary DESC; 
35--
SELECT department_id, SUM(salary) 
FROM Employee 
GROUP BY department_id 
ORDER BY SUM(salary) DESC;
36--
SELECT Employee.name, Department.name 
FROM Employee 
JOIN Department ON Employee.department_id = Department.department_id; 
37--
SELECT Project.name, Department.name 
FROM Project 
JOIN Department ON Project.department_id = Department.department_id;
38--
SELECT Employee.name, Project.name 
FROM Employee 
JOIN Project ON Employee.department_id = Project.department_id;
39--
SELECT Employee.name, Department.name 
FROM Employee 
LEFT JOIN Department ON Employee.department_id = Department.department_id; 
40--
SELECT Department.name, Employee.name 
FROM Department 
LEFT JOIN Employee ON Department.department_id = Employee.department_id; 
