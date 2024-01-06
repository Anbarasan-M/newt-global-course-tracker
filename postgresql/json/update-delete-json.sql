Update and delete in json

1) Updating json(add new)
-- Update a specific record by adding an email field to the user_info JSONB
UPDATE user_data
SET user_info = jsonb_set(user_info, '{email}', '"alice@example.com"')
WHERE user_id = 1;

2) Mpdifying an existing value in json
-- Update the age of a user with user_id = 2
UPDATE user_data
SET user_info = jsonb_set(user_info, '{age}', '30')
WHERE user_id = 2;

3) Deleting a json data(specific key)

-- Update the age of a user with user_id = 2
UPDATE user_data
SET user_info = jsonb_set(user_info, '{age}', '30')
WHERE user_id = 2;

4) Entire record delete

-- Delete records where the user_info JSONB contains a specific key-value pair
DELETE FROM user_data
WHERE user_info @> '{"name": "Alice"}';
