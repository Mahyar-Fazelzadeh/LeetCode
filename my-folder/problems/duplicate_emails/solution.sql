# Write your MySQL query statement below
SELECT DISTINCT(a.EMAIL)
FROM Person as a, Person as b
WHERE a.id != b.id and a.email = b.email