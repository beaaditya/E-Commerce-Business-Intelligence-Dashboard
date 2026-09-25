# 🛒 E-Commerce Business Intelligence Dashboard

**End-to-End E-Commerce Analytics Project using PostgreSQL, SQL, Power BI and DAX**

> A portfolio-ready business intelligence project built on the Brazilian Olist e-commerce marketplace dataset. The project transforms raw transactional data into a structured analytical model and an interactive Power BI dashboard for sales, customers, products, delivery, payments, reviews and geography.

---

## 📸 Dashboard Preview

### Executive Dashboard

![Executive Dashboard](dashboard%20screenshot/Executive%20Dashboard.png)

### Sales Trends

![Sales Trends](dashboard%20screenshot/Sales%20Trends.png)

### Category & Products

![Category & Products](dashboard%20screenshot/Category%20%26%20Products.png)

### Customer Geography

![Customer Geo](dashboard%20screenshot/Customer%20Geo.png)

### Delivery & Logistics

![Delivery & Logistics](dashboard%20screenshot/Delivery%20%26%20Logistics.png)

### Payments

![Payments](dashboard%20screenshot/Payments.png)

### Reviews

![Reviews](dashboard%20screenshot/Reviews.png)

### Sellers

![Sellers](dashboard%20screenshot/Sellers.png)

### Drill-through Analysis

![Drillthrough](dashboard%20screenshot/Drillthrough.png)

---


## 📌 Project Overview

This project simulates a real-world Business Intelligence workflow:

**Raw CSV Data → PostgreSQL → SQL Data Modeling → Power BI + DAX → Business Insights**

The analysis focuses on understanding revenue performance, customer behavior, category/product performance, delivery efficiency, payment behavior, seller performance, reviews and geographic concentration.

### Business questions answered

- How much revenue and how many orders are being generated?
- How is revenue changing over time?
- Which product categories and products contribute most to sales?
- How strong is customer retention and repeat purchasing?
- Which states generate the most revenue?
- How efficient is delivery performance?
- What payment methods and installment patterns are visible?
- Which sellers and products require attention?
- What actions can management take from the analysis?

---

## 🎯 Business Objectives

1. Monitor overall sales and order performance.
2. Identify revenue growth patterns and seasonality.
3. Find high-performing product categories.
4. Measure repeat customer behavior.
5. Evaluate delivery and logistics performance.
6. Understand geographic concentration of demand.
7. Analyze payments, reviews and sellers.
8. Convert analysis into practical business recommendations.

---

## 🧰 Tech Stack

| Layer | Technology |
|---|---|
| Data | Brazilian Olist E-Commerce Dataset |
| Database | PostgreSQL |
| Querying | SQL |
| Visualization | Microsoft Power BI |
| Calculations | DAX |
| Data inspection | Excel / CSV |
| Documentation | Markdown + PNG + PDF |

---

## 📊 Dataset

The project uses the public **Olist Brazilian E-Commerce dataset** containing approximately 100K orders and supporting transactional/dimensional tables.

### Main datasets

- `orders_dataset.csv`
- `order_items_dataset.csv`
- `order_payments_dataset.csv`
- `order_reviews_dataset.csv`
- `customers_dataset.csv`
- `products_dataset.csv`
- `sellers_dataset.csv`
- `geolocation_dataset.csv`
- `product_category_name_translation.csv`

### Approximate data volume

| Dataset | Rows |
|---|---:|
| Orders | 99,441 |
| Order Items | 112,650 |
| Payments | 103,886 |
| Customers | 99,441 |
| Products | 32,951 |
| Reviews | 99K+ |
| Sellers | 3,095 |

---

## 🏗️ Data Architecture

The analytical solution follows a layered approach:

**Raw CSVs**  
↓  
**PostgreSQL tables + constraints + indexes**  
↓  
**SQL transformation / BI views**  
↓  
**Power BI semantic model**  
↓  
**DAX measures + interactive dashboard**  
↓  
**Business insights and recommendations**

See:

- [`Docs/Data_Pipeline_Architecture.png`](Docs/Data_Pipeline_Architecture.png)
- [`Docs/BI_Solution_Architecture.png`](Docs/BI_Solution_Architecture.png)
- [`Docs/Analytics_Workflow.png`](Docs/Analytics_Workflow.png)
- [`Docs/ER_Diagram.png`](Docs/ER_Diagram.png)

---

## 🗂️ Repository Structure

```text
E-Commerce Business Intelligence Dashboard/
│
├── Dataset/
│   ├── customers_dataset.csv
│   ├── geolocation_dataset.csv
│   ├── orders_dataset.csv
│   ├── order_items_dataset.csv
│   ├── order_payments_dataset.csv
│   ├── order_reviews_dataset.csv
│   ├── products_dataset.csv
│   ├── product_category_name_translation.csv
│   └── sellers_dataset.csv
│
├── Dax Measures/
│   ├── DateDim.txt
│   └── DAX Measures.txt
│
├── Docs/
│   ├── ER_Diagram.png
│   ├── Data_Pipeline_Architecture.png
│   ├── BI_Solution_Architecture.png
│   └── Analytics_Workflow.png
│
├── dashboard screenshot/
│   ├── Executive Dashboard.png
│   ├── Sales Trends.png
│   ├── Category & Products.png
│   ├── Customer Geo.png
│   ├── Delivery & Logistics.png
│   ├── Payments.png
│   ├── Reviews.png
│   ├── Sellers.png
│   └── Drillthrough.png
│
├── sql/
│   ├── schema.sql
│   ├── ForeignKey.sql
│   ├── Index.sql
│   ├── CopyCSV.sql
│   ├── BIViews.sql
│   ├── business_query.sql
│   └── e-commerce intelligence dashboard.sql
│
├── Business_report.pdf
└── README.md
```

---

## 📈 Key Business Metrics

The raw Olist data contains **99,441 orders**, **96,096 unique customers**, and approximately **$16.01M in total payment value** when payments are aggregated once per order.

| KPI | Result |
|---|---:|
| Total Orders | 99,441 |
| Unique Customers | 96,096 |
| Total Payment Value | $16.01M |
| Average Order Value | $160.99 |
| Repeat Customer Rate | 3.12% |
| On-Time Delivery Rate | 91.88% |
| Late Delivery Rate | 8.11% |

> KPI definitions should be kept consistent with the DAX measures in the Power BI model. Revenue/payment calculations are aggregated at order level to avoid double counting multiple payment rows.

---

## 🔎 Key Insights

### 1. Revenue performance
Total payment value is approximately **$16.01M** across 99,441 orders. Revenue is concentrated in the 2017–2018 operating period, with 2018 generating more payment value than 2017.

### 2. Customer retention
Only **3.12% of unique customers placed more than one order**. This indicates a strong opportunity to improve retention, loyalty and repeat purchasing.

### 3. Delivery performance
Approximately **91.88% of delivered orders were on time**, while **8.11% were late** based on the delivered customer date versus the estimated delivery date.

### 4. Geographic concentration
The top five customer states account for approximately **73.2% of total payment value**, showing substantial geographic concentration. São Paulo is the largest contributor.

### 5. Category concentration
Using item-level product revenue, the five largest categories contribute roughly **40.3% of product sales value**. This highlights a meaningful concentration of demand while also showing that revenue is spread across a broader category portfolio.

---

## 💡 Business Recommendations

### Customer retention
- Build loyalty or repeat-purchase incentives.
- Segment customers by purchase frequency and value.
- Use personalized offers and product recommendations.
- Track repeat customer rate as a recurring KPI.

### Logistics
- Investigate states and sellers with above-average late-delivery rates.
- Monitor delivery lead time by region.
- Prioritize last-mile optimization in high-volume markets.

### Category strategy
- Protect availability of high-performing categories.
- Review pricing and promotional effectiveness.
- Identify underperforming categories with growth potential.

### Geographic expansion
- Maintain strong service levels in high-revenue states.
- Investigate lower-revenue regions before increasing marketing spend.
- Combine demand analysis with logistics capacity.

---

## 📐 Data Model

The database uses normalized source tables and analytical views.

### Core analytical views

- `bi_fact_sales`
- `bi_fact_order`
- `bi_dim_product`
- `bi_fact_review_latest`
- `bi_payments_order`

The ER diagram and solution architecture are available in the `Docs/` folder.

---

## 🧮 Key DAX / BI Metrics

The project includes measures for:

- Total Revenue / Payment Value
- Total Orders
- Total Customers
- Average Order Value (AOV)
- Repeat Customer %
- Year-over-Year Growth
- Rolling 30-Day Revenue
- On-Time Delivery %
- Late Delivery %
- Category / Product performance
- Customer and seller analysis

See [`Dax Measures/DAX Measures.txt`](Dax%20Measures/DAX%20Measures.txt).

---

## 🚀 How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/E-Commerce-Business-Intelligence-Dashboard.git
cd E-Commerce-Business-Intelligence-Dashboard
```

### 2. Create the PostgreSQL database

Create a PostgreSQL database and run the schema scripts in the `sql/` folder.

### 3. Load the CSV files

Update the file paths in `CopyCSV.sql` for your local machine and load the datasets into PostgreSQL.

### 4. Apply database relationships and indexes

Run:

```text
schema.sql
ForeignKey.sql
Index.sql
```

### 5. Create analytical views

Run:

```text
BIViews.sql
```

### 6. Open Power BI

Open the `.pbix` file from the dashboard folder and update the PostgreSQL connection if required.

### 7. Explore the dashboard

Use the slicers, KPI cards, charts and drill-through page to investigate the business questions.

---

## 📄 Business Report

A detailed business report is available here:

**[`Business_report.pdf`](Business_report.pdf)**

The report covers:

- Executive summary
- Business problem
- Data and methodology
- KPI analysis
- Sales trends
- Customer retention
- Category performance
- Delivery performance
- Geographic analysis
- Strategic recommendations
- Limitations and next steps

---

## ⚠️ Analytical Notes & Limitations

- The Olist dataset represents a historical marketplace dataset rather than a live business.
- Revenue definitions should distinguish order-level payment value from item-level product sales.
- Repeat customer analysis uses `customer_unique_id`, not the transactional `customer_id`.
- Delivery performance is calculated for orders with the required delivery and estimated dates.
- The project is designed for analytical and portfolio purposes; conclusions should not be treated as forecasts of current market behavior.

---

## 🔮 Future Enhancements

- RFM customer segmentation
- Customer lifetime value analysis
- Sales forecasting
- Market basket analysis
- Seller risk scoring
- Automated refresh pipeline
- Real-time or scheduled PostgreSQL → Power BI refresh
- Predictive delivery-delay modeling

---

## 👨‍💻 Project

**E-Commerce Business Intelligence Dashboard**  
**Focus:** Business Intelligence • Data Analytics • SQL • Power BI • DAX • PostgreSQL

