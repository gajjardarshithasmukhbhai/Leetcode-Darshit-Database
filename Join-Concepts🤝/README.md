# SQL Join Concepts Cheat Sheet

## 1. INNER JOIN

- Returns only the rows with matching values in both tables.
- Excludes rows with no match in either table.

**Example:**
Suppose you have two tables:
- `students(id, name, class_id)`
- `classes(id, class_name)`

```sql
SELECT students.name, classes.class_name
FROM students
INNER JOIN classes ON students.class_id = classes.id;
```
*This returns only students who are assigned to a class.*

---

## 2. LEFT JOIN (LEFT OUTER JOIN)

- Returns all rows from the left table, and matched rows from the right table.
- If no match, right table columns are NULL.

**Example:**
```sql
SELECT students.name, classes.class_name
FROM students
LEFT JOIN classes ON students.class_id = classes.id;
```
*This returns all students. If a student is not assigned to any class, `class_name` will be NULL.*

---

## 3. RIGHT JOIN (RIGHT OUTER JOIN)

- Returns all rows from the right table, and matched rows from the left table.
- If no match, left table columns are NULL.

**Example:**
```sql
SELECT students.name, classes.class_name
FROM students
RIGHT JOIN classes ON students.class_id = classes.id;
```
*This returns all classes. If a class has no students, `students.name` will be NULL.*

---

## 4. FULL JOIN (FULL OUTER JOIN)

- Returns all rows when there is a match in either left or right table.
- Rows with no match in one table will have NULLs for that table's columns.
- Not supported in MySQL directly; can be simulated with `UNION`.

**Example:**
```sql
SELECT students.name, classes.class_name
FROM students
LEFT JOIN classes ON students.class_id = classes.id
UNION
SELECT students.name, classes.class_name
FROM students
RIGHT JOIN classes ON students.class_id = classes.id;
```
*This returns all students and all classes, matching where possible. If a student is not assigned to a class or a class has no students, the unmatched columns will be NULL.*

---

## 5. SELF JOIN

- Joins a table to itself.
- Useful for hierarchical or relational data within the same table.

**Example:**
Suppose you have an `employee(id, name, manager_id)` table.

```sql
SELECT e1.name AS employee, e2.name AS manager
FROM employee e1
LEFT JOIN employee e2 ON e1.manager_id = e2.id;
```
*This returns each employee and their manager's name. If an employee has no manager, `manager` will be NULL.*

---

## 6. CROSS JOIN

- Returns the Cartesian product of both tables (all possible combinations).
- No ON clause is used.

**Example:**
```sql
SELECT students.name, classes.class_name
FROM students
CROSS JOIN classes;
```
*This returns every possible combination of student and class.*

---

## Key Points

- Use INNER JOIN for matching data only.
- Use LEFT/RIGHT JOIN to include all rows from one side.
- Use SELF JOIN for hierarchical relationships.
- Use CROSS JOIN for all combinations (rare in practice).
- FULL JOIN is not natively supported in MySQL, use UNION of LEFT and RIGHT JOINs.

---
