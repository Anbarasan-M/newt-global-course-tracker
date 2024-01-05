Full join 

SELECT *
FROM table1
FULL JOIN table2 ON table1.id = table2.id;

SELECT *
FROM table1
LEFT JOIN table2 ON table1.id = table2.id

UNION

SELECT *
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;
