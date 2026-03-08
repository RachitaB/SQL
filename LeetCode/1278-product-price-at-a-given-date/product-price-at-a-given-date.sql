# Write your MySQL query statement below
SELECT
    p.product_id,
    COALESCE(
        (
            SELECT np.new_price FROM Products np
            WHERE p.product_id = np.product_id 
            AND change_date<='2019-08-16'
            ORDER BY np.change_date desc limit 1
        ),10) AS price
FROM 
(
    SELECT DISTINCT product_id FROM Products
) AS p;