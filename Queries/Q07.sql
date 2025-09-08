-- 7)  List customers who placed more than one order and their total spending.

SELECT 
    customers.Customer_ID,
    customers.First_Name,
    customers.Last_Name,
    COUNT(orders.Order_ID) AS Order_Count,
    SUM(orders.Total_Amount) AS Total_Spending
FROM
    customers
        JOIN
    orders ON customers.Customer_ID = orders.Customer_ID
GROUP BY orders.Customer_ID , customers.First_Name , customers.Last_Name
HAVING COUNT(orders.Order_ID) > 1;