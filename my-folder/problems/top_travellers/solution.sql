# Write your MySQL query statement below
SELECT u.name, COALESCE(sum(r.distance),0) as travelled_distance 
FROM Rides as r
RIGHT JOIN Users as u 
ON r.user_id = u.id
GROUP BY r.user_id
ORDER BY sum(r.distance) DESC, u.name