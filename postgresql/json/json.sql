JSON in postgres 

1)Creating JSON Data:
SELECT '{"key1": "value1", "key2": "value2"}'::json AS json_data;

2)Accessing JSON Elements:
SELECT json_data->'key1' AS value_of_key1 FROM table_name;

3)Extracting Values from JSON:
SELECT json_data->>'key1' AS value_of_key1 FROM table_name;

4)Adding Elements to JSON:
SELECT json_data || '{"new_key": "new_value"}'::json AS updated_json_data FROM table_name;

5)Removing Elements from JSON:
SELECT json_data - 'key1' AS updated_json_data FROM table_name;

6)Querying JSON Arrays:
SELECT json_array_elements(json_array_column) AS element FROM table_name;

