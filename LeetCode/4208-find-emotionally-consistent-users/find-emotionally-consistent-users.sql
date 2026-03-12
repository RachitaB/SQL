# Write your MySQL query statement below
WITH cte AS (
    SELECT
        *,
        COUNT(reaction) OVER(PARTITION BY user_id,reaction) AS total_reactions,
        COUNT(content_id) OVER(PARTITION BY user_id) AS content_count,
        ROUND(COUNT(reaction) OVER(PARTITION BY user_id,reaction) / COUNT(content_id) OVER(PARTITION BY user_id),2) AS reaction_ratio
    FROM reactions
)
SELECT
    user_id,
    reaction as dominant_reaction,
    reaction_ratio
FROM cte
WHERE content_count>=5 AND reaction_ratio>=0.6
GROUP BY user_id
ORDER BY reaction_ratio DESC,user_id;