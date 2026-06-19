
# Retail Business Intelligence & Customer Segmentation Analysis

## Project Overview

This project analyzes 51,290 retail transactions from the Global Superstore dataset to uncover insights related to sales performance, profitability, customer behavior, regional growth opportunities, and product strategy.

The project follows an end-to-end Data Analytics workflow using Excel, SQL, Python, and Power BI to transform raw data into actionable business insights and interactive dashboards.

---

## Project Highlights

✔ Analyzed 51,290 retail transactions across multiple regions and customer segments

✔ Performed data cleaning and transformation using Excel and Power Query

✔ Conducted business-focused SQL analysis using advanced queries, CTEs, subqueries, and window functions

✔ Performed Exploratory Data Analysis (EDA) using Python, Pandas, NumPy, and Matplotlib

✔ Built customer segmentation models to classify customers into High Value, Regular, and Low Value groups

✔ Developed a 4-page interactive Power BI dashboard for executive, regional, customer, and product analysis

✔ Identified discount-driven profit leakage and high-value customer opportunities

---

## Business Objective

The objective of this project is to help retail decision-makers answer key business questions:

- Which products generate high revenue but low profit?
- Which customers contribute the most value?
- Which regions deserve additional investment?
- How do discounts impact profitability?
- What seasonal sales patterns exist?
- How can customers be segmented based on business value?

---

## Dataset Information

| Metric | Value |
|----------|----------|
| Records | 51,290 |
| Orders | 25,035 |
| Customers | 1,590 |
| Total Sales | $12.64M |
| Total Profit | $1.47M |
| Profit Margin | 11.6% |
| Analysis Period | 2011–2014 |

---

## Tools & Technologies

- Microsoft Excel
- Power Query
- MySQL
- Python
- Pandas
- NumPy
- Scikit-Learn
- Matplotlib
- Power BI

---

## Project Workflow

### Phase 1: Data Cleaning & Preparation

Performed using Excel and Power Query:

- Data validation and quality checks
- Removal of inconsistencies
- Profit Margin calculation
- Delivery Days calculation
- Discount Band creation
- Profit Status classification
- Missing value validation

### Phase 2: SQL Business Analysis

Business analysis performed using MySQL.

Key areas analyzed:

- Profitability Analysis
- Customer Intelligence
- Regional Performance
- Product Strategy
- Operations Analysis
- Time-Series Analysis

SQL Concepts Used:

- GROUP BY
- ORDER BY
- HAVING
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- PARTITION BY
- Running Totals

### Phase 3: Python Analytics & Customer Segmentation

Exploratory Data Analysis:

- Sales Distribution Analysis
- Profit Distribution Analysis
- Outlier Detection
- Correlation Analysis
- Discount vs Profit Analysis

Customer Segmentation:

- High Value Customers
- Regular Customers
- Low Value Customers

Libraries Used:

- Pandas
- NumPy
- Matplotlib
- Scikit-Learn

### Phase 4: Power BI Dashboard Development

Designed and developed a 4-page interactive business intelligence dashboard.

---

# Dashboard Preview

## Page 1 – Executive Summary

![Executive Summary](Dashboard_Screenshots/Page1_Executive.png)

### Features

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Profit Margin
- Monthly Sales Trend
- Segment Contribution
- Top Regions by Profit

---

## Page 2 – Regional Performance

![Regional Performance](Dashboard_Screenshots/Page2_Regional.png)

### Features

- Regional Sales Analysis
- Regional Profit Analysis
- Profit Margin Comparison
- Geographic Performance Analysis
- Regional Performance Matrix

---

## Page 3 – Customer Analytics & Segmentation

![Customer Analytics](Dashboard_Screenshots/Page3_Customer.png)

### Features

- Top Customers by Revenue
- Top Customers by Profit
- Sales by Segment
- Customer Count by Segment
- Customer Segmentation Analysis
- Revenue & Profit by Customer Segment

---

## Page 4 – Product Analytics & Profitability

![Product Analytics](Dashboard_Screenshots/Page4_Product.png)

### Features

- Top Products by Revenue
- Category Contribution Analysis
- Loss-Making Products
- Discount Band Analysis
- Product Profitability Analysis

---

# Key Business Insights

## Profitability Insights

- Discounts above 20% significantly reduced profitability.
- Several products generated high revenue but low profit.
- Loss-making products negatively impacted overall business performance.

## Customer Insights

- High Value customers represented a small percentage of the customer base but contributed a significant share of revenue and profit.
- Consumer Segment generated over 50% of total sales.

## Regional Insights

- Central Region generated the highest sales and profit.
- North Asia and Central Asia achieved strong profit margins.
- Southeast Asia generated strong sales but relatively low profitability.

## Seasonal Insights

- November and December were the strongest-performing months.
- January and February experienced lower business activity.
- Clear seasonal trends were identified across the business.

---

# Business Recommendations

### Pricing & Discounts

- Review products receiving discounts above 20%.
- Reduce excessive discounting on low-margin products.

### Customer Strategy

- Prioritize retention of High Value customers.
- Develop loyalty programs for top-performing customers.

### Regional Growth

- Increase investment in high-performing regions.
- Investigate low-profit regions for operational inefficiencies.

### Product Strategy

- Promote high-profit products.
- Reevaluate pricing strategies for loss-making products.
- Optimize product portfolio based on profitability.

---

# Repository Structure

```text
Retail-Business-Intelligence-Customer-Segmentation-Analysis

├── cleaned_data.xlsx
├── Global_Superstore_SQL_Analysis.sql
├── Global_Superstore_Python_Analysis.ipynb
├── Retail_Business_Intelligence_Dashboard.pbix
├── Dashboard_Screenshots
│   ├── Page1_Executive.png
│   ├── Page2_Regional.png
│   ├── Page3_Customer.png
│   └── Page4_Product.png
└── README.md
```

---

## Dataset Information

This project is based on the Global Superstore dataset, which was cleaned, transformed, and enriched using Excel and Power Query before being used across multiple analytics tools.

### Data Sources Across Tools

| Tool | Dataset Used |
|--------|--------|
| Excel & Power Query | cleaned_data.xlsx |
| MySQL | super_sales table |
| Python | cleaned_data.csv |
| Power BI | cleaned_data.csv, customer_segments.csv |

The same cleaned dataset was used throughout the project to ensure consistency across Excel analysis, SQL business analysis, Python analytics, customer segmentation, and Power BI dashboard development.

### Additional Features Created

The following business metrics were engineered during the data preparation phase:

- Profit Margin %
- Delivery Days
- Discount Band
- Profit Status
- Customer Segments (High Value, Regular, Low Value)

These derived features enabled deeper business analysis and customer segmentation.
## Author

**Pooja Kumari**

Aspiring Data Analyst

**Skills:** SQL • Excel • Power BI • Python • Data Visualization • Business Intelligence

---

⭐ If you found this project useful, feel free to explore the dashboard, SQL analysis, and Python notebooks.
