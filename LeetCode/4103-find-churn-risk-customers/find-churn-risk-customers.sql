# Write your MySQL query statement below
WITH latest_activity AS (
    SELECT 
        user_id,
        event_date,
        MAX(event_date) OVER(PARTITION BY user_id) AS max_event_date,
        MIN(event_date) OVER(PARTITION BY user_id) AS min_event_date,
        event_type,
        plan_name AS current_plan,
        monthly_amount,
        MAX(monthly_amount) OVER(PARTITION BY user_id) AS max_historical_amount,
        DATEDIFF(MAX(event_date) OVER(PARTITION BY user_id),MIN(event_date) OVER(PARTITION BY user_id)) AS days_as_subscriber,
        COUNT(CASE WHEN event_type = 'downgrade' THEN 1 ELSE NULL END) OVER(PARTITION BY user_id) as is_downgraded,
        MAX(CASE WHEN event_type = 'cancel' THEN event_date ELSE '1800-01-01' END) OVER(PARTITION BY user_id) as max_cancel_date
    FROM subscription_events
)
SELECT 
    user_id,
    current_plan,
    monthly_amount AS current_monthly_amount,
    max_historical_amount,
    days_as_subscriber
FROM latest_activity
WHERE max_event_date!=max_cancel_date AND days_as_subscriber>=60 AND is_downgraded>0  
AND (monthly_amount / max_historical_amount)<=0.5
ORDER BY days_as_subscriber DESC,user_id;