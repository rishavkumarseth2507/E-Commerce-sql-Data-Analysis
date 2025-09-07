-- 6) Find the total quantity of each product sold, sorted by highest to lowest.

SELECT products.Product_ID, products.Product_name, SUM(order_items.Quantity) AS Total_Quantity_Sold

FROM products JOIN order_items ON
	products.Product_ID = order_items.Product_ID
GROUP BY  products.Product_ID,  products.Product_name
ORDER BY Total_Quantity_Sold DESC;