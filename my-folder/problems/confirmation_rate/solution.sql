# # Write your MySQL query statement below
# SELECT s.user_id, (
#   SELECT  SUM(user_id )
#   FROM Confirmations 
#   WHERE action='confirmed '
#   GROUP BY action
# )/(SELECT  SUM(user_id )
#   FROM Confirmations 
#   WHERE action='timeout    '
#   GROUP BY action
# ) as confirmation_rate 

# FROM Signups s
# LEFT JOIN Confirmations c
# ON s.user_id = c.user_id 

# SELECT *
# FROM Signups s
# LEFT JOIN(
# SELECT c.action ,c.user_id,  COUNT( c.time_stamp)
# #FROM Confirmations c
# # FROM Signups s
# # LEFT JOIN Confirmations c
# # ON s.user_id = c.user_id 
# GROUP BY c.action ,c.user_id) as g
# ON s.user_id = g.user_id 




# #SELECT *
# SELECT a.user_id ,(COALESCE(a.counting,0)/(COALESCE(a.counting,0)+(COALESCE(b.counting,0)))) as confirmation_rate 
# FROM (SELECT c.action ,s.user_id,  COUNT( c.time_stamp) as counting
# #FROM Confirmations c
# FROM Signups s
# LEFT JOIN Confirmations c
# ON s.user_id = c.user_id 
# GROUP BY c.action ,s.user_id
# ORDER BY s.user_id, c.action) as a, (SELECT c.action ,s.user_id,  COUNT( c.time_stamp) as counting
# #FROM Confirmations c
# FROM Signups s
# LEFT JOIN Confirmations c
# ON s.user_id = c.user_id 
# GROUP BY c.action ,s.user_id
# ORDER BY s.user_id, c.action) as  b
# WHERE a.user_id = b.user_id AND
# a.action = 'confirmed ' AND
# b.action != 'confirmed   '

SELECT 
  s.user_id,
  ROUND(AVG(CASE WHEN action = 'confirmed' THEN 1.00 ELSE 0.00 END),2) AS confirmation_rate
FROM Signups s LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id
# SELECT c.action ,s.user_id,  COUNT( c.time_stamp) as counting
# #FROM Confirmations c
# FROM Signups s
# LEFT JOIN Confirmations c
# ON s.user_id = c.user_id 
# GROUP BY c.action ,s.user_id
# ORDER BY s.user_id, c.action