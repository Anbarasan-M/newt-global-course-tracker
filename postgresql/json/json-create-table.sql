Creating a table with json data

-- Creating a table with JSONB column
CREATE TABLE user_data (
    user_id SERIAL PRIMARY KEY,
    user_info JSONB
);

-- Inserting JSONB data into the table
INSERT INTO user_data (user_info)
VALUES
    ('{"name": "Alice", "age": 30, "city": "New York"}'::jsonb),
    ('{"name": "Bob", "age": 25, "city": "San Francisco"}'::jsonb),
    ('{"name": "Charlie", "age": 35, "city": "Los Angeles"}'::jsonb);
