# Write your MySQL query statement below
WITH sorted_stores AS (
    SELECT
        store_id,
        MAX(price) as max_price,
        MIN(price) as min_price
    FROM inventory
    GROUP BY store_id
    HAVING COUNT(DISTINCT product_name)>=3
),
identify_products AS (
    SELECT
        i.store_id,
        i.product_name,
        i.quantity,
        i.price
    FROM sorted_stores st JOIN inventory i ON i.store_id=st.store_id
    WHERE i.price=max_price OR i.price=min_price 
)
SELECT 
    s.store_id,
    s.store_name,
    s.location,
    i1.product_name as most_exp_product,
    i2.product_name as cheapest_product,
    ROUND((i2.quantity/i1.quantity),2) as imbalance_ratio
FROM identify_products i1 
JOIN identify_products i2 ON i1.store_id=i2.store_id
AND i1.price>i2.price AND i1.quantity<i2.quantity
JOIN stores s ON s.store_id=i1.store_id
ORDER BY imbalance_ratio DESC,s.store_name;