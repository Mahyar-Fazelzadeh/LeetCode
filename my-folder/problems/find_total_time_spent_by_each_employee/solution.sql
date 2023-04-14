# Write your MySQL query statement below
select event_day as day, emp_id   ,sum(out_time -in_time    ) as total_time           
from Employees  
#where YEAR(time_stamp) = 2020
group by event_day ,emp_id 
#having  max(time_stamp) between '2020-01-01 00:00:00' and '2020-12-31 23:59:59'