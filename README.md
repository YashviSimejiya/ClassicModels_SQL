# ClassicModels SQL Practice

A practical SQL exercise project built using the **ClassicModels sample database** in MySQL.  
This repository contains the database setup, 15 SQL queries, and the database import/export workflow completed as part of a basic SQL practice task.

## 📌 Project Overview

The ClassicModels dataset represents a company that sells scale model cars and related products. It contains information about:

* Customers
* Employees
* Offices
* Products
* Product lines
* Orders
* Order details
* Payments

The objective of this project was to set up the database locally, perform SQL operations on the dataset, and organize the solutions into individual SQL files for reproducibility and review.

## 🗂️ Repository Structure

```text
ClassicModels-SQL-Practice/
│
├── database.sql
│
├── queries/
│   ├── 01\_offices\_sorted.sql
│   ├── 02\_employee\_count.sql
│   ├── 03\_total\_payments.sql
│   ├── 04\_product\_lines\_cars.sql
│   ├── 05\_payments\_october\_28\_2004.sql
│   ├── 06\_payments\_greater\_100k.sql
│   ├── 07\_products\_by\_product\_line.sql
│   ├── 08\_product\_count\_by\_line.sql
│   ├── 09\_minimum\_payment.sql
│   ├── 10\_payments\_greater\_than\_twice\_average.sql
│   ├── 11\_average\_markup\_percentage.sql
│   ├── 12\_distinct\_product\_count.sql
│   ├── 13\_customers\_without\_sales\_representatives.sql
│   ├── 14\_executives\_vp\_manager.sql
│   └── 15\_orders\_value\_greater\_5000.sql
│
└── README.md
```

## 🛠️ Technology Used

* **Database:** MySQL 8.x
* **SQL Client:** MySQL Workbench / MySQL CLI
* **Dataset:** ClassicModels
* **Version Control:** Git \& GitHub

## 🗄️ Database Schema

The `classicmodels` database contains the following 8 tables:

|Table|Purpose|
|-|-|
|`customers`|Customer information and sales representatives|
|`employees`|Employee details and reporting relationships|
|`offices`|Company office locations|
|`products`|Product details, pricing, and product lines|
|`productlines`|Product line descriptions|
|`orders`|Customer order information|
|`orderdetails`|Products and quantities within each order|
|`payments`|Customer payment records|

## 🔄 Database Setup \& Verification

The original SQL script was imported into a local MySQL server.

The database was then exported using `mysqldump`, dropped, recreated, and restored from the generated SQL dump to verify that the database could be reproduced successfully.

### Import

```bash
mysql -u root -p < database.sql
```

### Export

```bash
mysqldump -u root -p --add-drop-table --hex-blob classicmodels > classicmodels\_export.sql
```

### Restore

```bash
mysql -u root -p classicmodels < classicmodels\_export.sql
```

### Verification

```sql
USE classicmodels;

SHOW TABLES;

SELECT COUNT(\*) FROM customers;
SELECT COUNT(\*) FROM products;
SELECT COUNT(\*) FROM orders;
```

The restored database was verified with:

* **122 customers**
* **110 products**
* **326 orders**
* **8 tables**

## 📊 SQL Queries Covered

The project contains 15 individual SQL exercises covering fundamental SQL operations:

1. Sort offices by country, state, and city
2. Count the number of employees
3. Calculate total payments received
4. Filter product lines containing `Cars`
5. Calculate payments received on a specific date
6. Filter payments greater than `$100,000`
7. List products by product line
8. Count products in each product line
9. Find the minimum payment received
10. Find payments greater than twice the average payment
11. Calculate the average percentage markup of MSRP over buy price
12. Count distinct products
13. Find customers without assigned sales representatives
14. Find executives with `VP` or `Manager` in their job title using `CONCAT()`
15. Find orders with a total value greater than `$5,000`

## 🎯 Project Objective

The purpose of this project is to demonstrate the ability to:

* Work with a relational SQL database
* Understand table relationships
* Write and organize SQL queries
* Perform filtering, sorting, grouping, and aggregation
* Use subqueries for analytical conditions
* Work with dates and calculated values
* Validate database restoration
* Maintain SQL work in a structured GitHub repository

## 📚 Dataset Source

The ClassicModels dataset used for this exercise was provided through the SQL practice assignment and imported locally for querying.

## 👤 Author

**Yashvi Simejiya**

SQL Practice Project • MySQL • ClassicModels

