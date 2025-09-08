-- 11) Find the top 10 customers who spent the most in total.


SELECT 
    orders.Customer_ID,
    CONCAT(customers.first_name,
            ' ',
            customers.last_name) AS Full_name,
    SUM(orders.Total_Amount) AS Total_Spent
FROM
    orders
        JOIN
    customers ON orders.customer_id = customers.Customer_ID
GROUP BY orders.Customer_ID
ORDER BY Total_Spent DESC
LIMIT 10;