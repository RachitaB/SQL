-- # Write your MySQL query statement below
SELECT 
    customer_id
FROM customer_transactions
GROUP BY customer_id
HAVING SUM(IF(transaction_type='purchase',1,0))>=3 
    AND ((SUM(IF(transaction_type='refund',1,0)) / COUNT(*)) * 100)<20
    AND DATEDIFF(MAX(transaction_date),MIN(transaction_date))>=30
ORDER BY customer_id;

