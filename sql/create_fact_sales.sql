-- Create sales fact table

DROP TABLE IF EXISTS cycle2_analytics.fact_sales CASCADE;

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