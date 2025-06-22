# SELF JOIN Concept in MySQL

## What is a SELF JOIN?

A SELF JOIN is a regular join but the table is joined with itself. This is useful when you want to compare rows within the same table or find relationships among rows in the same table.

## Syntax

```sql
SELECT a.column_name, b.column_name
FROM table_name a
JOIN table_name b
ON a.common_field = b.common_field;
```

## How SELF JOIN Works

- The same table is used twice in the query by giving it different aliases.
- You can compare rows within the same table, such as finding employees and their managers, or finding pairs of related records.

## Example

Suppose you have an `EMPLOYEE` table:

| id | name    | managerId |
|----|---------|-----------|
| 1  | Alice   | NULL      |
| 2  | Bob     | 1         |
| 3  | Charlie | 1         |
| 4  | David   | 2         |

To find each employee and their manager's name:

```sql
SELECT e1.name AS Employee, e2.name AS Manager
FROM EMPLOYEE e1
LEFT JOIN EMPLOYEE e2
ON e1.managerId = e2.id;
```

## Key Points

- SELF JOIN uses table aliases to distinguish the same table used multiple times.
- It is commonly used for hierarchical or recursive data, such as organizational charts.
- You can use any type of join (INNER, LEFT, etc.) as a SELF JOIN.

## Visualization

```
EMPLOYEE Table:
| id | name    | managerId |
|----|---------|-----------|
| 1  | Alice   | NULL      |
| 2  | Bob     | 1         |
| 3  | Charlie | 1         |
| 4  | David   | 2         |

Result of SELF JOIN:
| Employee | Manager |
|----------|---------|
| Alice    | NULL    |
| Bob      | Alice   |
| Charlie  | Alice   |
| David    | Bob     |
```

## Summary

A SELF JOIN allows you to join a table to itself, enabling you to compare and relate rows within the same table.
