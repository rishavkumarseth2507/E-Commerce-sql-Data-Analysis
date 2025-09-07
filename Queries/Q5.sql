-- 5) Show customers who joined in 2023.

SELECT * FROM customers
WHERE YEAR(Join_Date) = 2023;