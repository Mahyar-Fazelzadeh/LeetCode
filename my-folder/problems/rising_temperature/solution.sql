# Write your MySQL query statement below
# SELECT COALESCE(b.id , 1) as Id
# FROM Weather as a, Weather as b
# WHERE (a.id +1) = b.id and a.temperature < b.temperature


SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature