/*
====================================================
File: Regional_Sales.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
Which regions generate the highest revenue and profit?

Stakeholder:
CEO, Regional Sales Managers

Expected Outcome:
Compare regional performance and identify areas
requiring additional investment or strategic focus.
*/

SELECT
    Region,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit
FROM Superstore
GROUP BY Region
ORDER BY Revenue DESC;
