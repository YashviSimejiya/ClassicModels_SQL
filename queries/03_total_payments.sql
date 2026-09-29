-- Q3. What is the total of payments received?
USE classicmodels;

SELECT SUM(amount) AS total_payments
FROM payments;
