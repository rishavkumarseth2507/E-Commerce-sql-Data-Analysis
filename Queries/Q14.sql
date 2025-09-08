-- 14) Get monthly revenue for the each year.

SELECT 
    YEAR(Order_Date) AS Year,
    ANY_VALUE(MONTHNAME(Order_Date)) AS Month,
    SUM(Total_Amount) AS Monthly_Revenue
FROM
    orders
GROUP BY YEAR(Order_Date) , MONTH(Order_Date)
ORDER BY YEAR(Order_Date) DESC , MONTH(Order_Date) DESC;

