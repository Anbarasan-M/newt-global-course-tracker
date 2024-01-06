Using existence operator 

Table 

CREATE TABLE user_data (
    user_id SERIAL PRIMARY KEY,
    user_info JSONB
);

INSERT INTO user_data (user_info)
VALUES
    ('{"name": "Alice", "age": 30, "city": "New York"}'::jsonb),
    ('{"name": "Bob", "age": 25, "city": "San Francisco"}'::jsonb),
    ('{"name": "Charlie", "age": 35}'::jsonb);


Operation 

-- Check if the 'city' key exists in user_info for all records
SELECT user_info, user_info ? 'city' AS has_city_key
FROM user_data;
