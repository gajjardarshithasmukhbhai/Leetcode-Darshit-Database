# Insight: Authors Who Viewed Their Own Articles

## Problem Overview

We need to find all authors who have viewed their own articles. The `views` table contains records of which user viewed which author's article.

## Solution Approach

We select records where the `author_id` is the same as the `viewer_id`, meaning the author viewed their own article. We group by `author_id` to ensure each author appears only once.

```sql
SELECT v1.author_id AS id
FROM views v1
WHERE v1.author_id = v1.viewer_id
GROUP BY v1.author_id
ORDER BY v1.author_id ASC;
```

## Explanation

- **WHERE v1.author_id = v1.viewer_id**: Filters for cases where the author is also the viewer.
- **GROUP BY v1.author_id**: Ensures each author appears only once in the result.
- **ORDER BY v1.author_id ASC**: Sorts the results by author ID in ascending order.

## Key Points

- This query identifies self-views by comparing the author and viewer IDs.
- Grouping and ordering help present the results as required.

## Summary

By filtering for records where the author viewed their own article, we can efficiently list all such authors.
By using a SELF JOIN, we can efficiently compare employees with their managers and identify those earning more than their managers.
