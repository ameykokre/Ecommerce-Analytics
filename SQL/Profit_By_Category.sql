/*
====================================================
File: Profit_By_Category.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
Which product categories are underperforming?

Stakeholder:
Finance Manager, Sales Manager

Expected Outcome:
Identify categories with low profitability so that
pricing, discounting, and inventory strategies can
be optimized.
*/

SELECT
    Category,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit
FROM Superstore
GROUP BY Category
ORDER BY Profit ASC;
