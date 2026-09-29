-- Q8. How many products in each product line?
USE classicmodels;

SELECT productLine, COUNT(*) AS product_count
FROM products
GROUP BY productLine
ORDER BY productLine;
