-- =========================================
-- BUSINESS ANALYSIS QUERIES
-- =========================================

-- Q1: Total Revenue
SELECT SUM(payment_value) AS total_revenue
FROM bi_fact_sales;


-- Q2: Monthly Revenue Trend
SELECT
    DATE_TRUNC('month', purchase_date) AS month,
    SUM(payment_value) AS revenue
FROM bi_fact_sales
GROUP BY month
ORDER BY month;


-- Q3: Top 10 Products by Revenue
SELECT
    p.category,
    SUM(f.payment_value) AS revenue
FROM bi_fact_sales f
JOIN dim_products p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC
LIMIT 10;


-- Q4: Revenue by State
SELECT
    c.customer_state,
    SUM(f.payment_value) AS revenue
FROM bi_fact_sales f
JOIN dim_customers c
    ON f.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY revenue DESC;


-- Q5: Repeat Customers
SELECT
    customer_unique_id,
    COUNT(order_id) AS total_orders
FROM bi_fact_sales
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1;


-- Q6: Average Order Value (AOV)
SELECT
    SUM(payment_value) / COUNT(DISTINCT order_id) AS AOV
FROM bi_fact_sales;


-- Q7: On-Time Delivery %
SELECT
    COUNT(*) FILTER (WHERE delivered_date <= estimated_date) * 100.0 / COUNT(*) AS on_time_percentage
FROM bi_fact_sales;


-- Q8: Orders by Status
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM bi_fact_sales
GROUP BY order_status;


-- Q9: Top Customers by Spend
SELECT
    customer_unique_id,
    SUM(payment_value) AS total_spent
FROM bi_fact_sales
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;


-- Q10: Yearly Growth
SELECT
    EXTRACT(YEAR FROM purchase_date) AS year,
    SUM(payment_value) AS revenue
FROM bi_fact_sales
GROUP BY year
ORDER BY year;