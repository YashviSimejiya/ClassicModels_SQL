-- Q5. Report total payments for October 28, 2004.
USE classicmodels;

SELECT SUM(amount) AS total_payments
FROM payments
WHERE paymentDate = '2004-10-28';
