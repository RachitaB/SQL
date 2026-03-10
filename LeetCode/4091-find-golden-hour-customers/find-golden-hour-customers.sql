# Write your MySQL query statement below
SELECT 
    customer_id,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(CASE 
            WHEN TIME(order_timestamp) BETWEEN '11:00:00' AND '14:00:00' 
                OR TIME(order_timestamp) BETWEEN '18:00:00' AND '21:00:00'
            THEN 1 ELSE 0
        END) *100 / COUNT(customer_id),0) AS peak_hour_percentage,
    ROUND(AVG(order_rating),2) as average_rating
FROM restaurant_orders
GROUP BY customer_id
HAVING COUNT(customer_id)>=3 AND peak_hour_percentage>=60 AND average_rating>=4 
    AND (COUNT(order_rating) / COUNT(customer_id))>=0.5
ORDER BY average_rating DESC,customer_id DESC;