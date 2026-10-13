# MySQL--clause-and-joins
MySQL Clauses and Joins Assignment | Practicing SQL queries using DISTINCT, WHERE, GROUP BY, aggregate functions, INNER JOIN, LEFT JOIN, RIGHT JOIN, and NULL handling for employee, department, and location data.

MySQL Clauses and Joins Assignment

📌 Project Overview

This project demonstrates my understanding of SQL clauses, aggregate functions, and different types of joins using MySQL. The assignment focuses on retrieving, filtering, grouping, and combining employee, department, and location data to answer business-related questions.

🎯 Objectives

- Retrieve unique values using "DISTINCT".
- Filter and sort records using SQL clauses.
- Perform calculations using aggregate functions.
- Group records and summarize employee data using "GROUP BY".
- Combine related tables using "JOIN", "LEFT JOIN", and "RIGHT JOIN".
- Identify departments with no employees and locations without assigned employees.
- Handle missing matching records using "NULL" values returned by joins.

🛠️ Tools and Technologies

- Database: MySQL
- Language: SQL
- Concepts: SQL Clauses, Aggregate Functions, GROUP BY, INNER JOIN, LEFT JOIN, RIGHT JOIN, NULL Handling

📚 Key SQL Concepts Practiced

SQL Concept| Purpose
"SELECT DISTINCT"| Retrieves unique values without duplicates
"WHERE"| Filters records based on conditions
"ORDER BY"| Sorts query results
"LIMIT"| Restricts the number of returned rows
"GROUP BY"| Groups records for aggregate calculations
"HAVING"| Filters grouped results
"COUNT()"| Counts records or non-NULL values
"AVG()", "MAX()", "MIN()", "SUM()"| Performs aggregate calculations
"INNER JOIN"| Retrieves matching records from both tables
"LEFT JOIN"| Returns all rows from the left table and matching rows from the right
"RIGHT JOIN"| Returns all rows from the right table and matching rows from the left

💻 Sample SQL Queries

1. Retrieve Distinct Values

SELECT DISTINCT salary
FROM employees;

Retrieves unique salary values from the employee table.

2. Count Employees in Each Department, Including Empty Departments

SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

Displays every department and its employee count, including departments with zero employees.

3. Display All Locations and Assigned Employees

SELECT l.location, e.employee_name
FROM employees e
RIGHT JOIN location l
    ON e.location_id = l.location_id;

Displays all locations, including those without assigned employees. MySQL returns "NULL" for the employee name when no matching employee exists.

📊 Key Learnings

- Understood the difference between SQL clauses and aggregate functions.
- Learned how "GROUP BY" produces department-wise summaries.
- Practiced choosing appropriate joins based on the required output.
- Learned how outer joins preserve unmatched records.
- Understood how "COUNT(employee_id)" differs from "COUNT(*)" when counting employees after an outer join.
- Improved my ability to write SQL queries for real-world business scenarios.

🚀 Conclusion

This assignment strengthened my foundational SQL skills and improved my understanding of data retrieval, aggregation, and table relationships. These concepts are essential for data cleaning, reporting, and analysis as I continue developing my skills in data analytics.

👩‍💻 Author

Anju Das M
Aspiring Data Analyst

- "LinkedIn" (http://www.linkedin.com/in/anjudasm12)
- "GitHub" (http://github.com/anju-das-m)
