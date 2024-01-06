1)Creating a view 

CREATE VIEW my_view AS
SELECT column1, column2
FROM table_name
WHERE condition;

2)Querying a view 

SELECT * FROM my_view;

3)Modifying a view

CREATE OR REPLACE VIEW my_view AS
SELECT updated_columns
FROM updated_table
WHERE updated_condition;

4)Deleting a view 

DROP VIEW my_view;

5) Creating view with filter 

CREATE VIEW high_salary_employees AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 50000;

6) View with a union of multiple tables 

CREATE VIEW all_personnel AS
SELECT employee_id, first_name, last_name, hire_date
FROM employees
UNION
SELECT contractor_id, first_name, last_name, start_date
FROM contractors;

7) Create view for multiple tables 

CREATE VIEW customer_order_info AS
SELECT c.customer_id, c.customer_name, o.order_id, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

