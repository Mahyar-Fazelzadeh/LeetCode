# Write your MySQL query statement below

SELECT t1.employee_id, t1.name , COUNT(t2.employee_id) as reports_count, ROUND(AVG(t2.age)) as average_age
FROM Employees t1
INNER JOIN Employees t2
ON t2.reports_to = t1.employee_id
GROUP BY t2.reports_to 
ORDER BY t1.employee_id