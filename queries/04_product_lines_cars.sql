-- Q4. List the product lines that contain 'Cars'.
USE classicmodels;

SELECT productLine
FROM productlines
WHERE productLine LIKE '%Cars%';
