/*
====================================================
File: Repeat_Customers.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
Which customers make repeat purchases?

Stakeholder:
Marketing Manager

Expected Outcome:
Measure customer retention and identify repeat
customers for loyalty campaigns and upselling
opportunities.
*/

SELECT
    Customer_ID,
    Customer_Name,
    COUNT(Order_ID) AS Total_Orders
FROM Superstore
GROUP BY
    Customer_ID,
    Customer_Name
HAVING COUNT(Order_ID) > 1
ORDER BY Total_Orders DESC;
