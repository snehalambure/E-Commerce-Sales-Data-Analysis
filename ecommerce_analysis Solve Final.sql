-- CREATE DATABASE ecommerce_db
USE ecommerce_db;

CREATE TABLE ecommerce_sales (
    order_id VARCHAR(50),
    product VARCHAR(100),
    category VARCHAR(100),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    region VARCHAR(50),
    customer_segment VARCHAR(50),
    order_date DATE
);

USE ecommerce_db;

-- Check if table is created
SHOW TABLES;

-- Check how many records were imported
SELECT COUNT(*) FROM ecommerce_sales;

-- Preview first 10 rows
SELECT * FROM ecommerce_sales LIMIT 10;

-- Get unique values for important columns
SELECT DISTINCT region FROM ecommerce_sales;
SELECT DISTINCT category FROM ecommerce_sales;


SELECT SUM(sales) AS total_sales FROM ecommerce_sales;

SELECT SUM(profit) AS total_profit FROM ecommerce_sales;

SELECT COUNT(DISTINCT order_id) AS total_orders FROM ecommerce_sales;

-- 1. Create Table
CREATE TABLE ecommerce_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    sales DECIMAL(10,2),
    profit DECIMAL(10,2)
);

-- 2. Total Sales, Profit, and Orders
SELECT 
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    COUNT(order_id) AS Total_Orders
FROM ecommerce_sales;

-- 3. Monthly Sales Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS Month,
    SUM(sales) AS Monthly_Sales
FROM ecommerce_sales
GROUP BY Month
ORDER BY Month;

-- 4. Top 5 Products by Sales
SELECT 
    product,
    SUM(sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY product
ORDER BY Total_Sales DESC
LIMIT 5;

-- 5. Regional Performance (Sales vs Profit)
SELECT 
    region,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY region
ORDER BY Total_Sales DESC;

-- 6. High-Profit Orders
SELECT 
    order_id,
    product,
    sales,
    profit
FROM ecommerce_sales
WHERE profit > 200
ORDER BY profit DESC;
