-- Q11. What is the average percentage markup of the MSRP on buyPrice?
USE classicmodels;

SELECT AVG((MSRP - buyPrice) / buyPrice * 100) AS average_markup_percentage
FROM products;
