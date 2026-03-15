# Write your MySQL query statement below
WITH cte1 AS (
    SELECT
        user_id,
        category
    FROM ProductPurchases p1 
    JOIN ProductInfo p2 ON p1.product_id=p2.product_id
)
SELECT 
    p.category as category1,
    c.category as category2,
    COUNT(DISTINCT p.user_id) as customer_count
FROM cte1 p JOIN cte1 c ON p.user_id=c.user_id
AND p.category < c.category
GROUP BY p.category,c.category
HAVING customer_count>=3
ORDER BY customer_count DESC,p.category,c.category;