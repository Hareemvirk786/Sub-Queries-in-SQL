USE Apex_Retail;

SELECT Order_ID, Total_Sales
FROM Orders
WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM Orders);

SELECT Order_ID, Total_Sales, (SELECT AVG(Total_Sales) FROM Orders) AS OverallAvg
FROM Orders
LIMIT 5;


SELECT Customer_ID, Customer_Name
FROM Customers
WHERE Customer_ID IN (SELECT Customer_ID FROM ORDERS);