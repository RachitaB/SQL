SELECT 
  user_id,
  DATEDIFF(MAX(post_date),MIN(post_date)) as days_between
FROM posts
WHERE YEAR(post_date)=2021
GROUP BY user_id
HAVING days_between>0
ORDER BY days_between DESC;
