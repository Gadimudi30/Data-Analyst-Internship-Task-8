# Data-Analyst-Internship-Task-8

# SQL Window Functions – Sales Analysis

This repository contains SQL queries and output files created while working with a sales dataset.  
The analysis focuses on understanding customer behavior, regional performance, sales trends over time, and top-performing products using SQL window functions.

---

## Dataset
The data used is a Superstore sales dataset that includes order details, customers, products, regions, and sales values.

---

## Work Summary

The dataset was first cleaned and imported into the database.  
After that, different SQL queries were written to explore the data and answer analytical questions.

The work includes:
- Calculating total sales at customer level
- Ranking customers based on sales within each region
- Comparing ranking methods such as `ROW_NUMBER`, `RANK`, and `DENSE_RANK`
- Creating a running total of sales using order dates
- Calculating month-over-month sales changes
- Identifying the top three products in each category based on sales
- Exporting query results into CSV files for review

All queries used for this analysis are stored in a single SQL file.

---

## Files

- `task8_window.sql` – SQL queries used for the analysis  
- `ranked_customers.csv` – Customer rankings by region  
- `mom_growth.csv` – Monthly sales and growth values  
- `insights_task8.txt` – Key observations from the analysis  

---

## Observations

- Sales contribution varies significantly across regions.
- Monthly sales show fluctuations rather than steady growth.
- Technology products frequently appear among the highest-selling items.

---

## Outcome
This work demonstrates practical usage of SQL window functions for reporting and trend analysis.
