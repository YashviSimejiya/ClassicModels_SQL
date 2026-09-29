-- Q1. Prepare a list of offices sorted by country, state, city.
USE classicmodels;

SELECT officeCode, city, state, country
FROM offices
ORDER BY country, state, city;
