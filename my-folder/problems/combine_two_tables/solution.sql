# Write your MySQL query statement below
SELECT p.firstname, p.lastname, a.city, a.state
FROM Person as p 
Left JOIN Address as a 
USING(personId)