/*
====================================================
File: Top_Products.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
Which products generate the highest revenue?

Stakeholder:
Sales Manager

Expected Outcome:
Identify top-performing products that contribute the
most revenue and should receive greater focus in
inventory planning, promotions, and marketing.
*/

SELECT
    Product_Name,
    SUM(Sales) AS Revenue
FROM Superstore
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;
