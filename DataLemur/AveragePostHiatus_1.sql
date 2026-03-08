-- Question
-- Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.

-- posts Table:
-- Column Name	Type
-- user_id	integer
-- post_id	integer
-- post_content	text
-- post_date	timestamp

-- Solution
SELECT 
  user_id,
  DATEDIFF(MAX(post_date),MIN(post_date)) as days_between
FROM posts
WHERE YEAR(post_date)=2021
GROUP BY user_id
HAVING days_between>0
ORDER BY days_between DESC;
