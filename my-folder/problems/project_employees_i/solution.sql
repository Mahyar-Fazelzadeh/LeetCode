# Write your MySQL query statement below
SELECT project_id, ROUND(avg(experience_years),2) as average_years
FROM Employee e
RIGHT join Project p
on e.employee_id = p.employee_id
GROUP BY project_id