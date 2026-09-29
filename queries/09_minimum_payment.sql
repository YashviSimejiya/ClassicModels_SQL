-- Q9. What is the minimum payment received?
USE classicmodels;

SELECT MIN(amount) AS minimum_payment
FROM payments;
