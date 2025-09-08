-- 13) Identify products that have never been ordered

SELECT 
    Product_ID, Product_Name
FROM
    products
WHERE
    Product_ID NOT IN (SELECT DISTINCT
            Product_ID
        FROM
            order_items);
