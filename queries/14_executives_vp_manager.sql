-- Q14. What are the names of executives with VP or Manager in their title?
-- Use CONCAT to combine first name and last name.
USE classicmodels;

SELECT CONCAT(firstName, ' ', lastName) AS employee_name,
       jobTitle
FROM employees
WHERE jobTitle LIKE '%VP%'
   OR jobTitle LIKE '%Manager%'
ORDER BY employee_name;
