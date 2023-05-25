# Write your MySQL query statement below
SELECT r.contest_id, ROUND((COUNT(r.user_id)/(SELECT COUNT(*) FROM users u))*100,2) as percentage
FROM register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id 

# SELECT r.contest_id, COUNT(r.user_id)/ (SELECT COUNT(*) FROM users u) as ppppp
# FROM register r 
# #ON u.user_id =r.user_id
# GROUP BY r.contest_id