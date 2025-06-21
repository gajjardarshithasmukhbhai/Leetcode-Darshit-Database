# LEFT JOIN Concepts in MySQL

## What is LEFT JOIN?

A `LEFT JOIN` in MySQL is a type of join that returns all rows from the left table and the matched rows from the right table. If there is no match, the result is NULL from the right table.

## Syntax

```sql
SELECT columns
FROM left_table
LEFT JOIN right_table
ON left_table.common_column = right_table.common_column;
```

## How LEFT JOIN Works

- All rows from the left table are included in the result.
- If a row from the left table has a matching row in the right table, the columns from the right table are included.
- If there is no matching row in the right table, the columns from the right table are filled with NULL.

## Example

Suppose you have two tables:

- `students` (id, name, class_id)
- `classes` (id, class_name)

To get all students and their class names (even if some students are not assigned to a class):

```sql
SELECT students.name, classes.class_name
FROM students
LEFT JOIN classes
ON students.class_id = classes.id;
```

## Key Points

- LEFT JOIN is also called LEFT OUTER JOIN.
- It is useful for finding all records from the left table, even if there are no matches in the right table.
- The order of tables matters: the left table's rows are always included.

## Visualization

```
LEFT TABLE         RIGHT TABLE
-----------        -----------
| 1 | A |          | 1 | X |
| 2 | B |          | 2 | Y |
| 3 | C |          | 4 | Z |

Result of LEFT JOIN:
| 1 | A | X |
| 2 | B | Y |
| 3 | C | NULL |
```

## Summary

LEFT JOIN combines rows from two tables, keeping all rows from the left table and matching rows from the right table, using NULL where there is no match.
