
# 🧱 Project Cycle 2 — Star Schema (Data Engineering Layer)

## 📌 Objective

This repository builds a clean, analytics-ready **star schema** from raw sales data.

The goal is to transform messy transactional data into structured tables that support scalable business analysis.

This serves as the **foundation for Cycle 2 analytics**.

---

## 🏗️ Star Schema Design

The final schema consists of:

### Fact Table
- **fact_sales** → transactional data (sales events)

### Dimension Tables
- **dim_customer** → customer details (who)
- **dim_product** → product details (what)
- **dim_date** → calendar data (when)

---

## 🔄 Data Pipeline


---

## 📁 Project Structure
Project_sales_analytics_cycle2_star_schema/
│
├── data/
│ ├── raw/
│ └── processed/
│ ├── clean_sales.csv
│ ├── dim_product.csv
│ ├── dim_customer.csv
│ ├── dim_date.csv
│ └── fact_sales.csv
│
├── notebooks/
│ ├── 01_data_cleaning.ipynb
│ ├── 02_build_dim_product.ipynb
│ ├── 03_build_dim_customer.ipynb
│ ├── 04_build_dim_date.ipynb
│ └── 05_build_fact_sales.ipynb
│
├── sql/
│ ├── 01_create_schema.sql
│ ├── 02_create_dim_product.sql
│ ├── 03_create_dim_customer.sql
│ ├── 04_create_dim_date.sql
│ ├── 05_create_fact_sales.sql
│ └── 06_create_all_tables.sql
│
├── requirements.txt
└── .gitignore


---

## 📊 Output Tables

### dim_product
- product_id (PK)
- product_name
- category
- sub_category

### dim_customer
- customer_id (PK)
- customer_name
- segment

### dim_date
- date_id (PK)
- year, month, day, etc.

### fact_sales
- sales_id (PK)
- date_id (FK)
- customer_id (FK)
- product_id (FK)
- quantity
- sales
- discount
- profit

---

## 🧪 Data Validation

- Cleaned dataset rows: **9,994**
- Customers: **793**
- Products: **~1,862**
- Date range: **2014–2017**

All foreign keys in `fact_sales` map correctly to dimension tables.

---

## 🛠 Tools Used

- Python (pandas, numpy)
- Jupyter Notebooks
- PostgreSQL (schema + table creation)
- CSV pipeline for reproducibility

---

## 🎯 Outcome

This repository produces a clean, structured dataset ready for:

- profitability analysis  
- customer analytics  
- dashboarding  
- advanced modelling  

---

## 🔗 Next Step

This star schema feeds directly into:

➡️ **Cycle 2 Analytics Repo (Profitability & Insights)**