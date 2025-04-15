CREATE TABLE online_sales (
    order_date DATE,
    amount INTEGER,
    order_id INTEGER,
    product_id INTEGER
);

select * from online_sales;

/* Import the Data fromexcel.csv file to postgresql. */

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;

 /* -- 2. Top 3 Months by Sales (Revenue) */
 
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
