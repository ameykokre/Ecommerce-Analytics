/*
====================================================
File: Customer_Lifetime_Value.sql
Project: E-Commerce Sales & Customer Analytics
====================================================

Business Question:
Who are the most valuable customers?

Stakeholder:
Marketing Manager

Expected Outcome:
Identify customers generating the highest revenue
for targeted loyalty programs, retention campaigns,
and personalized marketing initiatives.
*/

SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS Lifetime_Value
FROM Superstore
GROUP BY
    Customer_ID,
    Customer_Name
ORDER BY Lifetime_Value DESC;
