# Write your MySQL query statement below
SELECT d.name as Department , e.name as Employee , salary
#Max(salary) as Salary
FROM Employee as e
Left JOIN Department as d
on e.departmentId = d.id
WHERE (e.departmentId, salary) IN (
  SELECT departmentId ,Max(salary) 
  FROM Employee
  GROUP BY departmentId
)
#GROUP BY d.name
