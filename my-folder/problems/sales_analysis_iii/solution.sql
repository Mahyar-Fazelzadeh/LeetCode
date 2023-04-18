# Write your MySQL query statement below
select DISTINCT(p.product_id) , p.product_name
from Sales as s
left join  Product  as p
USING(product_id)
WHERE (s.product_id ) NOT IN ( 
  select s.product_id 
  from Sales as s 
  WHERE s.sale_date NOT between '2019-01-01' and '2019-03-31'
) and s.sale_date between '2019-01-01' and '2019-03-31'

