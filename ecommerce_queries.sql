-- ECOMMERCE DATA ANALYSIS


-- 1. TOTAL ORDERS
SELECT
    COUNT(DISTINCT "Order_ID") AS total_orders
FROM ecommerce_data;


-- 2. TOTAL SALES
SELECT
    SUM("Total Sales") AS total_sales
FROM ecommerce_data;


-- 3. TOTAL SALES EXCLUDING CANCELLED ORDERS
SELECT
    SUM("Total Sales") AS total_sales
FROM ecommerce_data
WHERE "Order_Status" <> 'Cancelled';


-- 4. TOP 10 PRODUCTS BY SALES
SELECT
    "Product",
    SUM("Total Sales") AS total_sales
FROM ecommerce_data
GROUP BY "Product"
ORDER BY total_sales DESC
LIMIT 10;


-- 5. TOP 10 PRODUCTS BY QUANTITY
SELECT
    "Product",
    SUM("Qty") AS total_quantity
FROM ecommerce_data
GROUP BY "Product"
ORDER BY total_quantity DESC
LIMIT 10;


-- 6. TOP 10 PRODUCTS BY PROFIT
SELECT
    "Product",
    SUM("Profit") AS total_profit
FROM ecommerce_data
GROUP BY "Product"
ORDER BY total_profit DESC
LIMIT 10;


-- 7. HIGHEST PROFIT PRODUCT
SELECT
    "Product",
    SUM("Profit") AS total_profit
FROM ecommerce_data
GROUP BY "Product"
ORDER BY total_profit DESC
LIMIT 1;


-- 8. PAYMENT MODE DISTRIBUTION
SELECT
    "Payment_Mode",
    COUNT(DISTINCT "Order_ID") AS total_orders
FROM ecommerce_data
GROUP BY "Payment_Mode"
ORDER BY total_orders DESC;


-- 9. TOP 10 CITIES BY SALES
SELECT
    "City",
    SUM("Total Sales") AS total_sales
FROM ecommerce_data
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;


-- 10. TOP 10 CITIES BY ORDERS
SELECT
    "City",
    COUNT(DISTINCT "Order_ID") AS total_orders
FROM ecommerce_data
GROUP BY "City"
ORDER BY total_orders DESC
LIMIT 10;


-- 11. TOP 10 CITIES BY PROFIT
SELECT
    "City",
    SUM("Profit") AS total_profit
FROM ecommerce_data
GROUP BY "City"
ORDER BY total_profit DESC
LIMIT 10;


-- 12. MONTHLY SALES
SELECT
    DATE_TRUNC('month', "Order_Date") AS month,
    SUM("Total Sales") AS total_sales
FROM ecommerce_data
WHERE "Order_Date" IS NOT NULL
GROUP BY DATE_TRUNC('month', "Order_Date")
ORDER BY month;


-- 13. HIGHEST SALES MONTH
SELECT
    DATE_TRUNC('month', "Order_Date") AS month,
    SUM("Total Sales") AS total_sales
FROM ecommerce_data
WHERE "Order_Date" IS NOT NULL
GROUP BY DATE_TRUNC('month', "Order_Date")
ORDER BY total_sales DESC
LIMIT 1;


-- 14. MISSING ORDER DATES
SELECT
    COUNT(*) AS missing_order_dates
FROM ecommerce_data
WHERE "Order_Date" IS NULL;


-- 15. CANCELLED ORDERS
SELECT
    COUNT(DISTINCT "Order_ID") AS cancelled_orders
FROM ecommerce_data
WHERE "Order_Status" = 'Cancelled';


-- 16. ORDER STATUS DISTRIBUTION
SELECT
    "Order_Status",
    COUNT(DISTINCT "Order_ID") AS total_orders
FROM ecommerce_data
GROUP BY "Order_Status"
ORDER BY total_orders DESC;


-- 17. CANCELLED ORDER PERCENTAGE
SELECT
    ROUND(
        COUNT(DISTINCT CASE
            WHEN "Order_Status" = 'Cancelled'
            THEN "Order_ID"
        END) * 100.0
        / COUNT(DISTINCT "Order_ID"),
        2
    ) AS cancelled_percentage
FROM ecommerce_data;