-- Creating a new database called salesDB
CREATE DATABASE salesDB;
-- Dropping (deleting) the database called demo
DROP DATABASE demo;
-- Query to retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;
-- Query to retrieve orderDate, requiredDate, and status of orders that are 'In Process'
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;
-- Query to display firstName, lastName, and email of employees with the job title 'Sales Rep'
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;
-- Query to retrieve all columns and records from the offices table
SELECT * 
FROM offices;
-- Query to fetch productName and quantityInStock, sorted by buyPrice, limiting to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;

-- SQL statement to create a table named student
CREATE TABLE student (
    id INT PRIMARY KEY,            -- ID column, integer, primary key
    fullName VARCHAR(100),         -- fullName column, text field with a maximum of 100 characters
    age INT                        -- age column, integer
);
-- SQL statement to insert 3 records into the student table
INSERT INTO student (id, fullName, age) 
VALUES 
(1, 'John Doe', 18),
(2, 'Jane Smith', 19),
(3, 'Sam Brown', 21);
-- SQL statement to update the age of the student with ID 2 to 20
UPDATE student
SET age = 20
WHERE id = 2;

SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

SELECT productCode, quantityOrdered, SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
