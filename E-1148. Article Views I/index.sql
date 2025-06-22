# Write your MySQL query statement below

SELECT v1.author_id as id FROM views v1 where v1.author_id=v1.viewer_id group by v1.author_id order by v1.author_id ASC;