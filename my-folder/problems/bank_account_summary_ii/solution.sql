# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) as balance
FROM Transactions as t
LEft join USERS as u
USING(account)
GROUP BY u.name
HAVING SUM(t.amount) > 10000
