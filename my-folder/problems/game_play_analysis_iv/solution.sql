# Write your MySQL query statement below
SELECT ROUND(
  (SELECT COUNT(a.player_id)
  FROM Activity a, Activity b
  WHERE a.player_id = b.player_id AND a.event_date = DATE_SUB(b.event_date, INTERVAL 1 DAY) AND  (a.player_id,a.event_date) IN (
    SELECT player_id, min(event_date) as first_date
    FROM Activity
    GROUP BY player_id 
  )) / (
     COUNT(DISTINCT(c.player_id))  
  ),2) AS fraction 
FROM Activity c
