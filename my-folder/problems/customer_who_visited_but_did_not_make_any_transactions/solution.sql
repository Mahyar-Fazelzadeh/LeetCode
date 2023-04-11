# Write your MySQL query statement below
SELECT customer_id , COUNT(customer_id) as count_no_trans 
FROM Visits as v
LEFT JOIN Transactions as t
USING(visit_id)

WHERE transaction_id IS NULL
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC