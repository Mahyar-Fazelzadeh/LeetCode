# Write your MySQL query statement below
SELECT a.query_name, ROUND(avg(a.rating/a.position),2) as quality, 
COALESCE((ROUND(100*((
  SELECT COUNT(*)
  FROM Queries b
  WHERE b.rating <3 and a.query_name=b.query_name
  GROUP BY b.query_name
)/COUNT(a.rating)),2)),0) as poor_query_percentage 
FROM Queries a
GROUP BY a.query_name
#HAVING rating >3