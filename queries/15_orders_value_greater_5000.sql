-- Q15. Which orders have a value greater than $5,000?
USE classicmodels;

SELECT orderNumber,
       SUM(quantityOrdered * priceEach) AS order_value
FROM orderdetails
GROUP BY orderNumber
HAVING SUM(quantityOrdered * priceEach) > 5000
ORDER BY order_value DESC;
