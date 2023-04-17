# Write your MySQL query statement below
SELECT u.user_id as buyer_id, u.join_date, #o.order_date as orders_in_2019
count(o.order_date) as orders_in_2019 
FROM Users as u
LEFT JOIN Orders as o
ON o.buyer_id = u.user_id
and o.order_date >= '2019-01-01'
GROUP BY u.user_id
#HAVING count(o.order_date) >= 2019-01-01

