-- 1
SELECT * FROM employees;

-- 2
SELECT name, salary FROM employees;

-- 3
SELECT DISTINCT department FROM employees;

-- 4
SELECT * FROM employees WHERE salary > 50000;

-- 5
SELECT * FROM employees WHERE hire_date > '2015-01-01';

-- 6
SELECT * FROM employees WHERE name LIKE 'A%';

-- 7
SELECT * FROM employees WHERE name LIKE '%n';

-- 8
SELECT * FROM employees WHERE name LIKE '%ar%';

-- 9
SELECT * FROM employees WHERE department = 'Sales';

-- 10
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- 11
SELECT * FROM employees WHERE department <> 'HR';

-- 12
SELECT * FROM employees WHERE hire_date < '2010-01-01';

-- 13
SELECT * FROM employees WHERE salary < 30000;

-- 14
SELECT * FROM employees WHERE department IN ('IT','Finance');

-- 15
-- 16
SELECT * FROM employees ORDER BY salary DESC;

-- 17
SELECT * FROM employees ORDER BY hire_date ASC;

-- 18
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

-- 19
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 3;

-- 20
SELECT COUNT(*) FROM employees;

-- 21
SELECT AVG(salary) FROM employees;

-- 22
SELECT MIN(salary) FROM employees;

-- 23
SELECT MAX(salary) FROM employees;

-- 24
SELECT SUM(salary) FROM employees;

-- 25
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- 26
SELECT department, AVG(salary) FROM employees GROUP BY department;

-- 27
SELECT department, COUNT(*) 
FROM employees GROUP BY department HAVING COUNT(*) > 5;

-- 28
SELECT department, AVG(salary) 
FROM employees GROUP BY department HAVING AVG(salary) > 50000;

-- 29
SELECT * FROM employees 
WHERE YEAR(hire_date) IN (
    SELECT YEAR(hire_date) 
    FROM employees GROUP BY YEAR(hire_date) HAVING COUNT(*) > 1
);

-- 30
SELECT department, AVG(salary) 
FROM employees GROUP BY department ORDER BY AVG(salary);

-- 31
SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 32
SELECT * FROM employees 
WHERE salary < (SELECT AVG(salary) FROM employees);

-- 33
SELECT * FROM employees 
WHERE hire_date = (SELECT MIN(hire_date) FROM employees);

-- 34
SELECT * FROM employees 
WHERE hire_date = (SELECT MAX(hire_date) FROM employees);

-- 35
SELECT * FROM employees e
WHERE salary = (
    SELECT MAX(salary) FROM employees 
    WHERE department = e.department
);

SELECT * FROM employees WHERE LENGTH(name) > 5;
-- 36
SELECT salary FROM employees GROUP BY salary HAVING COUNT(*) > 1;

-- 37
SELECT * FROM employees e
WHERE salary > (
    SELECT AVG(salary) FROM employees 
    WHERE department = e.department
);

-- 38
SELECT * FROM employees 
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

-- 39
SELECT * FROM employees 
WHERE salary >= (
    SELECT PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY salary) 
    FROM employees
);

-- 40
SELECT * FROM employees 
WHERE department IN (
    SELECT department FROM employees 
    GROUP BY department HAVING COUNT(*) < 3
);

-- 41
SELECT * FROM employees 
WHERE department = (
    SELECT department FROM employees 
    GROUP BY department 
    ORDER BY AVG(salary) DESC LIMIT 1
);

-- 42
SELECT * FROM employees 
WHERE salary = (
    SELECT DISTINCT salary FROM employees 
    ORDER BY salary DESC LIMIT 1 OFFSET 1
);

-- 43
SELECT * FROM employees e1
WHERE EXISTS (
    SELECT 1 FROM employees e2 
    WHERE e1.hire_date = e2.hire_date AND e1.id <> e2.id
);

-- 44
SELECT * FROM employees 
WHERE department = (
    SELECT department FROM employees 
    GROUP BY department 
    ORDER BY AVG(salary) ASC LIMIT 1
);

-- 45
SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 46
SELECT * FROM employees 
WHERE department IN (
    SELECT department FROM employees 
    GROUP BY department HAVING COUNT(*) > 10
);

-- 47
SELECT * FROM employees 
WHERE department IN (
    SELECT department FROM employees 
    GROUP BY department HAVING COUNT(*) < 5
);

-- 48
SELECT * FROM employees 
WHERE salary > 60000 AND department = 'IT';

-- 49
SELECT * FROM employees 
WHERE salary < 40000 AND department = 'HR';

-- 50
SELECT * FROM employees WHERE department LIKE 'M%';

-- 51
SELECT * FROM employees WHERE department LIKE '%s';

-- 52
SELECT * FROM employees WHERE department LIKE '%a%';

-- 53
SELECT department, AVG(salary) 
FROM employees GROUP BY department HAVING AVG(salary) > 55000;

-- 54 (assuming projects table)
SELECT * FROM employees 
WHERE department IN (
    SELECT department FROM projects GROUP BY department HAVING COUNT(*) >= 2
);

-- 55
SELECT * FROM employees 
WHERE hire_date = (
    SELECT hire_date FROM employees WHERE name = 'Jane Smith'
);
-- 56
SELECT SUM(salary) FROM employees 
WHERE YEAR(hire_date) = 2020;

-- 57
SELECT department, AVG(salary) 
FROM employees GROUP BY department ORDER BY AVG(salary) DESC;

-- 58
SELECT department, COUNT(*), AVG(salary) 
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;

-- 59
SELECT * FROM employees 
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

-- 60
SELECT department, COUNT(*), AVG(salary) 
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 2;

-- 61
SELECT name, salary FROM employees e
WHERE salary > (
    SELECT AVG(salary) FROM employees 
    WHERE department = e.department
);

-- 62
SELECT name FROM employees 
WHERE hire_date = (
    SELECT MIN(hire_date) FROM employees
);

-- 63 (assuming projects table)
SELECT department, COUNT(*) 
FROM projects GROUP BY department ORDER BY COUNT(*) DESC;

-- 64
SELECT * FROM employees e
WHERE salary = (
    SELECT MAX(salary) FROM employees 
    WHERE department = e.department
);

-- 65
SELECT name, salary FROM employees e
WHERE age > (
    SELECT AVG(age) FROM employees 
    WHERE department = e.department
);
