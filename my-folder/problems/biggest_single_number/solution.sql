# Write your MySQL query statement below
SELECT MAX(a.num) as num
FROM MyNumbers as a, MyNumbers as b
WHERE a.num != b.num 
and a.num in (
  SELECT num
  FROM MyNumbers
  GROUP BY num
  HAVING COUNT(num) < 2)


