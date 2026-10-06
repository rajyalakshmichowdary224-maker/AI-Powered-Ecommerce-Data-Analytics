
SELECT *
FROM ecommerce_sales_analytics_5000;
SELECT COUNT(*) AS total_orders
FROM ecommerce_sales_analytics_5000;
SELECT SUM(revenue) AS total_revenue
FROM ecommerce_sales_analytics_5000;
SELECT SUM(quantity) AS total_quantity_sold
FROM ecommerce_sales_analytics_5000;
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY product_category
ORDER BY total_revenue DESC;
SELECT region,
       SUM(revenue) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY region
ORDER BY total_revenue DESC;
SELECT payment_method,
       COUNT(*) AS payment_count
FROM ecommerce_sales_analytics_5000
GROUP BY payment_method
ORDER BY payment_count DESC;
SELECT AVG(customer_rating) AS average_rating
FROM ecommerce_sales_analytics_5000;
SELECT AVG(delivery_days) AS average_delivery_days
FROM ecommerce_sales_analytics_5000;
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(revenue) AS monthly_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year, order_month;
SELECT customer_id,
       SUM(revenue) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;
