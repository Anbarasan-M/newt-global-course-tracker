Table Inheritance

1) Creating a parent table 

CREATE TABLE vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER
);

2) Creating a child table

CREATE TABLE cars (
    doors INTEGER
) INHERITS (vehicles);

CREATE TABLE trucks (
    capacity DECIMAL
) INHERITS (vehicles);

3) Inseting a data into a table 

-- Inserting data into the 'cars' table
INSERT INTO cars (make, model, year, doors) VALUES ('Toyota', 'Corolla', 2019, 4);
INSERT INTO cars (make, model, year, doors) VALUES ('Honda', 'Civic', 2020, 4);

-- Inserting data into the 'trucks' table
INSERT INTO trucks (make, model, year, capacity) VALUES ('Ford', 'F-150', 2018, 5.0);
INSERT INTO trucks (make, model, year, capacity) VALUES ('Chevrolet', 'Silverado', 2021, 6.0);

4) Querying in inherited tables 

-- Selecting data from the 'vehicles' table
SELECT * FROM vehicles;

-- Selecting data from the 'cars' table
SELECT * FROM cars;

-- Selecting data from the 'trucks' table
SELECT * FROM trucks;

5) Querying across parent and child table 

-- Selecting data from the 'vehicles' table, including data from inherited tables
SELECT * FROM vehicles;

-- Filter data from 'vehicles' table to get only cars
SELECT * FROM vehicles WHERE doors IS NOT NULL;

-- Filter data from 'vehicles' table to get only trucks
SELECT * FROM vehicles WHERE capacity IS NOT NULL;

6) Updating and deleting 

-- Selecting data from the 'vehicles' table, including data from inherited tables
SELECT * FROM vehicles;

-- Filter data from 'vehicles' table to get only cars
SELECT * FROM vehicles WHERE doors IS NOT NULL;

-- Filter data from 'vehicles' table to get only trucks
SELECT * FROM vehicles WHERE capacity IS NOT NULL;

