# Write your MySQL query statement below

SELECT  a.machine_id, round(AVG(a.timestamp-b.timestamp),3) as processing_time
FROM Activity as a, Activity as b
WHERE a.machine_id = b.machine_id 
and a.process_id  = b.process_id  
and a.activity_type ='end' 
and b.activity_type ='start' 
GROUP BY machine_id

# SELECT round(a.timestamp-b.timestamp,3)
# FROM Activity as a, Activity as b
# WHERE a.machine_id = b.machine_id 
# and a.process_id  = b.process_id  
# and a.activity_type ='end' 
# and b.activity_type ='start'