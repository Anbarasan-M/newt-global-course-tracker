Partitioning types

1) Range Partitioning 

CREATE TABLE sales_data (
    id SERIAL PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL
);

CREATE TABLE sales_data_2022 PARTITION OF sales_data
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE sales_data_2023 PARTITION OF sales_data
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

2) List partitioning

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    country_code VARCHAR(2),
    order_date DATE,
    total_amount DECIMAL
);

CREATE TABLE orders_usa PARTITION OF orders
    FOR VALUES IN ('US');

CREATE TABLE orders_uk PARTITION OF orders
    FOR VALUES IN ('UK');

3) Hash Partitioning 

CREATE TABLE hashed_data (
    id SERIAL PRIMARY KEY,
    data_value VARCHAR(100)
);

CREATE TABLE hashed_data_part_1 PARTITION OF hashed_data
    FOR VALUES WITH (MODULUS 4, REMAINDER 0);

CREATE TABLE hashed_data_part_2 PARTITION OF hashed_data
    FOR VALUES WITH (MODULUS 4, REMAINDER 1);

CREATE TABLE hashed_data_part_3 PARTITION OF hashed_data
    FOR VALUES WITH (MODULUS 4, REMAINDER 2);

CREATE TABLE hashed_data_part_4 PARTITION OF hashed_data
    FOR VALUES WITH (MODULUS 4, REMAINDER 3);
