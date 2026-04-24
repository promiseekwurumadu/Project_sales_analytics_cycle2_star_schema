-- Create date dimension table

DROP TABLE IF EXISTS cycle2_analytics.dim_date CASCADE;

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