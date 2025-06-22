# Concepts: Finding Customers Who Never Ordered Using LEFT JOIN

## Problem Overview

We need to find all customers who have never placed an order. This involves comparing the `CUSTOMERS` table with the `ORDERS` table.

## Solution Approach

We use a `LEFT JOIN` to join the `CUSTOMERS` table with the `ORDERS` table on the customer ID. The `LEFT JOIN` ensures all customers are included, even if they have no matching order.

```sql
SELECT CUS.NAME AS Customers
FROM CUSTOMERS CUS
LEFT JOIN ORDERS ORD
ON CUS.ID = ORD.CUSTOMERID
WHERE ORD.ID IS NULL;
```

## Explanation

- **LEFT JOIN**: Returns all rows from the left table (`CUSTOMERS`), and the matched rows from the right table (`ORDERS`). If there is no match, the result is NULL from the right table.
- **WHERE ORD.ID IS NULL**: Filters the results to only those customers who do not have any matching order in the `ORDERS` table (i.e., customers who never placed an order).

## Key Points

- LEFT JOIN is useful for finding records in one table that do not have corresponding records in another table.
- The `IS NULL` condition after the join helps identify unmatched rows from the right table.

## Summary

By using `LEFT JOIN` and checking for NULLs in the joined table, we can efficiently find all customers who never placed an order.
