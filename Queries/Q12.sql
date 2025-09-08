-- 12) Find the average rating for each product with at least 2 reviews.

SELECT 
    product_reviews.Product_ID,
    AVG(product_reviews.Rating) AS Avg_Rating,
    COUNT(*) AS Total_Reviews
FROM
    product_reviews
GROUP BY product_reviews.Product_ID
HAVING COUNT(*) >= 2;