# Write your MySQL query statement below

SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(DISTINCT id) > 1;