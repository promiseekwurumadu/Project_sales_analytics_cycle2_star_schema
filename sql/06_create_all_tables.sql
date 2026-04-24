-- Run this script to create all Cycle 2 star schema tables

CREATE SCHEMA IF NOT EXISTS cycle2_analytics;

DROP TABLE IF EXISTS cycle2_analytics.fact_sales CASCADE;
DROP TABLE IF EXISTS cycle2_analytics.dim_date CASCADE;
DROP TABLE IF EXISTS cycle2_analytics.dim_customer CASCADE;
DROP TABLE IF EXISTS cycle2_analytics.dim_product CASCADE;

CREATE TABLE cycle2_analytics.dim_product (
    product_id    TEXT PRIMARY KEY,
    product_name  TEXT NOT NULL,
    category      TEXT NOT NULL,
    sub_category  TEXT
);

CREATE TABLE cycle2_analytics.dim_customer (
    customer_id    TEXT PRIMARY KEY,
    customer_name  TEXT NOT NULL,
    segment        TEXT
);

CREATE TABLE cycle2_analytics.dim_date (
    date_id       DATE PRIMARY KEY,
    date          DATE NOT NULL,
    year          INTEGER NOT NULL,
    quarter       INTEGER NOT NULL,
    month         INTEGER NOT NULL,
    month_name    TEXT NOT NULL,
    day           INTEGER NOT NULL,
    day_name      TEXT NOT NULL,
    week_of_year  INTEGER,
    is_weekend    BOOLEAN
);

CREATE TABLE cycle2_analytics.fact_sales (
    sales_id     INTEGER PRIMARY KEY,
    date_id      DATE NOT NULL,
    customer_id  TEXT NOT NULL,
    product_id   TEXT NOT NULL,
    quantity     INTEGER,
    sales        NUMERIC(12, 2),
    discount     NUMERIC(5, 2),
    profit       NUMERIC(12, 4),

    CONSTRAINT fk_fact_date
        FOREIGN KEY (date_id)
        REFERENCES cycle2_analytics.dim_date(date_id),

    CONSTRAINT fk_fact_customer
        FOREIGN KEY (customer_id)
        REFERENCES cycle2_analytics.dim_customer(customer_id),

    CONSTRAINT fk_fact_product
        FOREIGN KEY (product_id)
        REFERENCES cycle2_analytics.dim_product(product_id)
);