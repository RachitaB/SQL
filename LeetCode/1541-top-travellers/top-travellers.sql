# Write your MySQL query statement below
SELECT
    u.name,
    IFNULL(SUM(r.distance),0) as travelled_distance
FROM Users u
left JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY SUM(r.distance) DESC,u.name asc;