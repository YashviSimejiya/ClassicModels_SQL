-- Q10. List all payments greater than twice the average payment.
USE classicmodels;

SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE amount > 2 * (SELECT AVG(amount) FROM payments)
ORDER BY amount DESC;
