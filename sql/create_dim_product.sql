-- Create product dimension table

DROP TABLE IF EXISTS cycle2_analytics.dim_product CASCADE;

CREATE TABLE cycle2_analytics.dim_product (
    product_id    TEXT PRIMARY KEY,
    product_name  TEXT NOT NULL,
    category      TEXT NOT NULL,
    sub_category  TEXT
);