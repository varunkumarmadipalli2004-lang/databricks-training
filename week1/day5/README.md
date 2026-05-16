## Day 5: Join, Nested, and Correlated Queries (Questions 41–50)
this folder contains SQL practice queries focusing on intermediate database interactions,
including advanced LEFT JOIN operations to find unmatched records, nested subqueries, and correlated subqueries where the inner query depends on the outer query.  
* Unmatched Record Isolation (LEFT JOIN): Mastering how to find missing relationships (e.g., identifying employees completely unassigned to projects or departments with zero headcount ) by pairing LEFT JOIN with IS NULL filters.
* Self-Referencing & Subquery Filtering: Using single-value subqueries to dynamically pull records based on a specific employee's attributes (e.g., finding team members who share a department with 'John Doe' ).
* Deep Aggregations with Joins: Combining data across multiple tables to calculate group metrics, such as finding the exact department name attached to the company's highest average salary.
* Correlated Subqueries (Row-by-Row Evaluation): Writing advanced queries where the inner subquery relies directly on the current row of the outer query (e.g., finding employees who earn more than the average salary of their specific department ).
