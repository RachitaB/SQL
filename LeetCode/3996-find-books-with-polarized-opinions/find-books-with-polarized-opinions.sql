-- # Write your MySQL query statement below
With temp AS(
    SELECT
        book_id,
        MAX(session_rating) max_rating,
        MIN(session_rating) as min_rating,
        COUNT(*) as total,
        COUNT(CASE WHEN session_rating>=4 OR session_rating<=2 THEN 1 END) as score
    FROM reading_sessions
    GROUP BY book_id
    HAVING COUNT(*)>=5 AND MAX(session_rating)>=4 AND MIN(session_rating)<=2
)
SELECT
    b.book_id,
    b.title,
    b.author,
    b.genre,
    b.pages,
    (t.max_rating - t.min_rating) as rating_spread,
    ROUND(t.score / t.total,2) as polarization_score
FROM books b 
JOIN temp t ON b.book_id = t.book_id
WHERE (t.score / t.total)>=0.6
ORDER BY polarization_score desc,b.title desc ;
