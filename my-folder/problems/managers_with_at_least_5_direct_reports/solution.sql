# Write your MySQL query statement below
SELECT e.name
FROM Employee e
INNER JOIN 
  (SELECT  managerId , COUNT(name)
  FROM Employee 
  GROUP BY managerId
  HAVING COUNT(name)>=5 ) as g

ON g.managerId = e.id  

# SELECT  managerId , COUNT(name)
# FROM Employee 
# #WHERE managerId != NULL

# GROUP BY managerId
# HAVING COUNT(name)>=5
