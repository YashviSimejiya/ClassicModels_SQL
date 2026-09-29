-- Q13. Report the name and city of customers who don't have sales representatives.
USE classicmodels;

SELECT customerName, city
FROM customers
WHERE salesRepEmployeeNumber IS NULL
ORDER BY customerName;
