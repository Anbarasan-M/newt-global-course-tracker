Subqueries

1) Single row subquery


SELECT column_name
FROM table_name
WHERE column_name = (SELECT other_column FROM another_table WHERE condition);

2) Multiple row subquery

SELECT column_name
FROM table_name
WHERE column_name IN (SELECT other_column FROM another_table WHERE condition);

3) Correlated subquery

SELECT column_name
FROM table_name t1
WHERE column_name = (SELECT MAX(other_column) FROM another_table t2 WHERE t2.id = t1.id);
