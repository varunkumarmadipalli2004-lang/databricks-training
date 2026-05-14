21--
SELECT department_id, SUM(salary) 
FROM Employee 
GROUP BY department_id;
22--
SELECT department_id, AVG(age) 
FROM Employee 
GROUP BY department_id;
23--
SELECT YEAR(hire_date), COUNT(emp_id) 
FROM Employee 
GROUP BY YEAR(hire_date);
24--
SELECT department_id, MAX(salary) 
FROM Employee 
GROUP BY department_id;
25--
SELECT department_id, AVG(salary) 
FROM Employee 
GROUP BY department_id 
ORDER BY AVG(salary) DESC 
LIMIT 1;
26--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(emp_id) > 2;
27--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING AVG(salary) > 55000;
28--
SELECT YEAR(hire_date) 
FROM Employee 
GROUP BY YEAR(hire_date) 
HAVING COUNT(emp_id) > 1;
29--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING SUM(salary) < 100000;
30--
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING MAX(salary) > 75000;
