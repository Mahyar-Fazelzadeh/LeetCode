# Write your MySQL query statement below
# SELECT DISTINCT a.id
# FROM Tree as a, Tree as b
# WHERE a.id = b.p_id

SELECT id, 
CASE 
  WHEN p_id IS NULL THEN 'Root'
  WHEN id IN (SELECT p_id FROM Tree)  THEN 'Inner'
ELSE 'Leaf'
END as type
FROM Tree

# SELECT DISTINCT p_id FROM Tree