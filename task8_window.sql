
Task 8: SQL Window Functions


Total sales per customer:

SELECT customer_id, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_id;


Rank customers by sales per region:

SELECT region, customer_id,
       SUM(sales) AS total_sales,
       DENSE_RANK() OVER (PARTITION BY region ORDER BY SUM(sales) DESC) AS rank
FROM superstore
GROUP BY region, customer_id;


Running total sales:

SELECT order_date,
       SUM(sales) OVER (ORDER BY order_date) AS running_total
FROM superstore;


Month over Month growth:

WITH monthly AS (
  SELECT DATE_TRUNC('month', order_date) AS month,
         SUM(sales) AS total_sales
  FROM superstore
  GROUP BY 1
)
SELECT month,
       total_sales,
       LAG(total_sales) OVER (ORDER BY month) AS prev_month_sales,
       (total_sales - LAG(total_sales) OVER (ORDER BY month))
        / LAG(total_sales) OVER (ORDER BY month) * 100 AS mom_growth
FROM monthly;


Top 3 products per category:

WITH prod AS (
 SELECT category, product_name,
        SUM(sales) AS total_sales,
        DENSE_RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS rnk
 FROM superstore
 GROUP BY category, product_name
)
SELECT * FROM prod WHERE rnk <= 3;
