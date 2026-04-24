-- Create customer dimension table

DROP TABLE IF EXISTS cycle2_analytics.dim_customer CASCADE;

CREATE TABLE cycle2_analytics.dim_customer (
    customer_id    TEXT PRIMARY KEY,
    customer_name  TEXT NOT NULL,
    segment        TEXT
);