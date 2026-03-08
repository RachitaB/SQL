# Write your MySQL query statement below
SELECT
    user_id,
    COUNT(user_id) AS prompt_count,
    ROUND(AVG(tokens),2) AS avg_tokens
FROM prompts
GROUP BY user_id
HAVING prompt_count>=3 AND MAX(tokens) > avg_tokens*1.0
ORDER BY avg_tokens DESC,user_id;
