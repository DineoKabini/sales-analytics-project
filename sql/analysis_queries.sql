-- Revenue by region
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Profit by category
SELECT Category,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

SELECT "Sub-Category",
       SUM(Sales) AS total_sales
FROM sales
GROUP BY "Sub-Category"
ORDER BY total_sales DESC;


-- Monthly revenue
SELECT strftime('%Y-%m', "Order Date") AS month,
       SUM(Sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

SELECT "Customer Name",
       SUM(Sales) AS total_sales
FROM sales
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;

