-- 8)  Find products that have been ordered but never reviewed.

SELECT DISTINCT p.Product_ID, p.Product_Name
FROM products p
JOIN order_items oi ON p.Product_ID = oi.Product_ID
WHERE p.Product_ID NOT IN ( SELECT DISTINCT Product_ID FROM product_reviews);

   
