Project: E-commerce Sales Data Analysis 
Duration: 15 June 2025 – 15 September 2025
Author: Snehal Ambure

📌 Overview

This project focuses on data analysis using SQL to generate key business insights from e-commerce sales data.
The project demonstrates SQL skills including table creation, data insertion, cleaning, aggregation, and reporting.

🎯 Objectives

Create and manage a structured SQL database for e-commerce data.

Load raw data using INSERT statements.

Write SQL queries to:

Calculate total sales, profit, and orders.

Identify top-selling products.

Track monthly sales growth.

Analyze regional performance.

Filter high-profit orders.

🗂️ Project Structure
Ecommerce_Sales_Analysis_SQL/
│
├── Data/
│   └── ecommerce_sales_for_sql.csv       # Clean CSV file for SQL import
│
└── SQL/
    ├── ecommerce_analysis_queries.sql    # SQL queries only
    └── ecommerce_analysis_with_data.sql  # SQL queries + data insert statements

📊 SQL Queries Summary
Query	Description
Create Table	Creates ecommerce_sales table with proper data types.
Insert Data	Loads all rows from CSV into the database.
Total Metrics	Calculates total sales, profit, and number of orders.
Monthly Sales Trend	Summarizes sales data month-by-month.
Top Products	Finds top 5 products by total sales.
Regional Performance	Compares sales and profit by region.
High-Profit Orders	Filters orders with profit above a certain threshold.
🚀 Steps to Run

Create a Database:

CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;


Run SQL File with Data:

Open ecommerce_analysis_with_data.sql in your SQL client.

Execute the script to:

Create table

Insert all data

Run analysis queries

Verify Data:

SELECT COUNT(*) FROM ecommerce_sales;


Run Queries Individually:

Use ecommerce_analysis_queries.sql for reporting and visualization.

🛠️ Tools Used
Tool	Purpose
MySQL	Main SQL database for analysis
GitHub	Code and project documentation
