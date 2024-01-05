Inner Joins 
1) Inner Joins 
	SELECT employees.employee_id, employees.employee_name, employees.department_id, departments.department_name
	FROM employees
	INNER JOIN departments ON employees.department_id = departments.department_id;

2) Joins in same database
	SELECT *
	FROM database1.table1
	INNER JOIN database2.table2 ON database1.table1.common_column = database2.table2.common_column;

3) Joins in different database
	SELECT *
	FROM server1.database1.dbo.table1
	INNER JOIN server2.database2.dbo.table2 ON server1.database1.dbo.table1.common_column = server2.database2.dbo.table2.common_column;

4) Inner Join with using 
	SELECT employee_id, employee_name, department_name
	FROM employees
	INNER JOIN departments USING (department_id);


5) Inner Join with filter data
	SELECT employees.employee_id, employees.employee_name, employees.department_id, departments.department_name
	FROM employees
	INNER JOIN departments ON employees.department_id = departments.department_id
	WHERE departments.department_name = 'Sales';

6) Inner joins with different data types
	SELECT *
	FROM orders
	INNER JOIN customers ON orders.order_id = CAST(customers.customer_code AS INTEGER);

