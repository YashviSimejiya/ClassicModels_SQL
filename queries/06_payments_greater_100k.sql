-- Q6. Report those payments greater than $100,000.
USE classicmodels;

SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE amount > 100000
ORDER BY amount DESC;
