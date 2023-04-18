# Write your MySQL query statement below
select a.name as Employee  
FROM Employee as a, Employee as b
WHERE a.managerId = b.id and a.salary > b.salary