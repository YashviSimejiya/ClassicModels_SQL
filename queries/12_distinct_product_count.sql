-- Q12. How many distinct products does ClassicModels sell?
USE classicmodels;

SELECT COUNT(DISTINCT productCode) AS distinct_products
FROM products;
