# Write your MySQL query statement below
SELECT name from SalesPerson where name NOT IN(Select s.name
from Orders as o 
Inner join Company as c
using(com_id) 
Inner join SalesPerson as s
using(sales_id)
where c.name = "RED")

