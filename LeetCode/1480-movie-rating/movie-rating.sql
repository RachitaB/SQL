# Write your MySQL query statement below
(
    SELECT
        name AS results
    FROM MovieRating mr
    JOIN Users u ON u.user_id = mr.user_id
    GROUP BY mr.user_id
    ORDER BY COUNT(mr.user_id) desc,name
    LIMIT 1
)
UNION ALL
(
    SELECT 
        title AS results
    FROM MovieRating mr
    JOIN Movies m on mr.movie_id = m.movie_id
    WHERE created_at>='2020-02-01' AND created_at<'2020-03-01'
    GROUP BY title
    ORDER BY AVG(rating) DESC, title
    LIMIT 1
);