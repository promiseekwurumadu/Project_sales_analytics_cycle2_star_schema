-- Validate row counts

select 'dim_product' as table_name, count(*) as row_count
from cycle2_analytics.dim_product

union all

select 'dim_customer', count(*)
from cycle2_analytics.dim_customer

union all

select 'dim_date', count(*)
from cycle2_analytics.dim_date

union all

select 'fact_sales', count(*)
from cycle2_analytics.fact_sales;


-- Validate star schema joins

select
    f.sales_id,
    d.year,
    d.month_name,
    c.customer_name,
    c.segment,
    p.product_name,
    p.category,
    f.sales,
    f.profit,
    f.discount
from cycle2_analytics.fact_sales f
join cycle2_analytics.dim_date d
    on f.date_id = d.date_id
join cycle2_analytics.dim_customer c
    on f.customer_id = c.customer_id
join cycle2_analytics.dim_product p
    on f.product_id = p.product_id
limit 10;