-- Q7. List the products in each product line.
USE classicmodels;

SELECT productLine, productName
FROM products
ORDER BY productLine, productName;
