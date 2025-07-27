# Write your MySQL query statement below
WITH cte as (SELECT customer_number, COUNT(order_number) as Num_Ord from Orders GROUP BY customer_number)

SELECT customer_number from cte WHERE Num_Ord = (select MAX(Num_Ord) from cte);