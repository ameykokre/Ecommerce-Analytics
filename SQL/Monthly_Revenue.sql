/*
====================================================
File: Monthly_Revenue.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
What are the monthly sales trends?

Stakeholder:
CEO, Sales Manager

Expected Outcome:
Track revenue trends over time to identify growth
patterns, seasonality, and periods of declining sales.
*/

SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Revenue
FROM Superstore
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    Year,
    Month;
