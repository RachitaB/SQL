# Write your MySQL query statement below
SELECT
    p1.product_id as product1_id,
    p2.product_id as product2_id,
    pr1.category as product1_category,
    pr2.category as product2_category,
    COUNT(DISTINCT p1.user_id) as customer_count
FROM ProductPurchases p1
JOIN ProductPurchases p2 ON p1.user_id = p2.user_id AND p1.product_id < p2.product_id
LEFT JOIN ProductInfo pr1 ON p1.product_id = pr1.product_id
LEFT JOIN ProductInfo pr2 ON p2.product_id = pr2.product_id
GROUP BY p1.product_id,p2.product_id
HAVING customer_count>=3
ORDER BY customer_count desc,p1.product_id,p2.product_id;