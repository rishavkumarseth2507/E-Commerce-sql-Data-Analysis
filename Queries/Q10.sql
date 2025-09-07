-- 10) Find the most popular product category by number of orders.

SELECT products.Category, COUNT(order_items.Order_Item_ID) AS Total_OrderS
FROM products JOIN order_items ON
	products.Product_ID = order_items.Product_ID
GROUP BY products.Category
ORDER BY Total_Orders DESC LIMIT 1;