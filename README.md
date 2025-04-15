
# Task 6: Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume using SQL aggregate functions on the `online_sales` dataset.

##  Tools Used
- PostgreSQL

## Dataset
**Table Name:** `online_sales`  
**Columns Used:** `order_date`, `amount`, `order_id`

## SQL Tasks

### 1. Monthly Revenue and Order Volume
- Group data by `YEAR` and `MONTH` extracted from `order_date`.
- Use `SUM(amount)` to calculate total revenue.
- Use `COUNT(DISTINCT order_id)` to count unique orders (volume).
- Sort the results by `year` and `month`.

### 2. Top 3 Months by Revenue
- Group by `YEAR` and `MONTH`.
- Use `SUM(amount)` to get revenue per month.
- Sort in descending order of revenue.
- Limit results to top 3 months.

## 🧮 SQL Features Used
- `EXTRACT(YEAR FROM order_date)`
- `EXTRACT(MONTH FROM order_date)`
- `SUM()`
- `COUNT(DISTINCT ...)`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`


