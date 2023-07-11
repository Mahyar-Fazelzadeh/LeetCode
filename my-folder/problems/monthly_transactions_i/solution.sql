# Write your MySQL query statement below
SELECT t1.month, t1.country, t1.trans_count, t1.trans_total_amount, COALESCE(t2.approved_count,0) AS approved_count, COALESCE(t2.approved_total_amount,0) AS approved_total_amount

FROM (
  SELECT DATE_FORMAT(trans_date ,'%Y-%m') as month, country , 
  count(trans_date) as trans_count,
  SUM(amount) as trans_total_amount 
  FROM Transactions 
  GROUP BY month, country) t1

LEFT JOIN (
  SELECT DATE_FORMAT(trans_date ,'%Y-%m') as month, country , 
  COUNT(state) as approved_count ,
  SUM(amount) as approved_total_amount 
  FROM Transactions 
  WHERE state = 'approved'
  GROUP BY month, country) t2 ON (t1.month = t2.month  AND  t1.country = t2.country);


