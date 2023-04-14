# Write your MySQL query statement below

select stock_name   ,sum(CASE 
WHEN (operation =  'Buy') then price*(-1) 
ELSE price
END) as capital_gain_loss  
from Stocks   
group by stock_name

#group by event_day ,emp_id 
#having  max(time_stamp) between '2020-01-01 00:00:00' and '2020-12-31 23:59:59'