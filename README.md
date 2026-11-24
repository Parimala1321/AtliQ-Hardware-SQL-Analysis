# AtliQ Hardwares — SQL Analytics Project

**Business Insights from Ad-Hoc Analysis**  
**Author:** Parimala  
**Tools:** MySQL, SQL

## Project overview

AtliQ Hardwares is a computer hardware company in India with a growing international presence. In this project, I used MySQL to answer 10 ad-hoc business questions and translate the query results into business insights for management.

The analysis covers customer markets, product portfolio growth, manufacturing costs, customer discounts, gross sales, quarterly sales quantity, sales-channel contribution, and top-selling products by division.

## Business problem

Management needs clearer visibility into business performance to make informed decisions. The objective of this project was to explore the available business data, identify trends and patterns, and communicate findings that can support strategic decision-making.

## Business questions explored

| # | Business question | Analysis area |
|---|---|---|
| 01 | In which APAC markets does Atliq Exclusive operate? | Customer / Market |
| 02 | What was the percentage increase in unique products in 2021 compared with 2020? | Product growth |
| 03 | How many unique products are there in each segment? | Product portfolio |
| 04 | Which segment had the largest increase in unique products from 2020 to 2021? | Segment growth |
| 05 | Which products have the highest and lowest manufacturing costs? | Manufacturing |
| 06 | Which five Indian customers received the highest average pre-invoice discount in FY2021? | Customer discounts |
| 07 | What was the monthly gross sales trend for Atliq Exclusive? | Gross sales |
| 08 | Which quarter of FY2020 had the highest total sold quantity? | Quarterly sales |
| 09 | Which sales channel generated the most gross sales in FY2021, and what was its contribution? | Channel performance |
| 10 | What were the top three products by sold quantity in each division in FY2021? | Product performance |

## Key findings

The following findings are taken from the accompanying project presentation:

- **Product growth:** Unique products increased by **36.33%**, from 245 in 2020 to 334 in 2021 — an increase of 89 products.
- **Portfolio mix:** Notebook had the highest unique product count (129), while Networking had the lowest (9), across six segments.
- **Segment growth:** Accessories added the most unique products (+34). Desktop had the highest percentage growth, increasing from 7 to 22 products.
- **Manufacturing costs:** The reported range was 0.8920 for *AQ Master Wired X1 Ms* to 240.5364 for *AQ Home Allin 1 Gen 2*.
- **Customer discounts:** Flipkart had the highest average pre-invoice discount among the top five Indian customers in FY2021 at 30.83%, followed by Viveks at 30.38%.
- **Gross sales trend:** The presentation identifies a sharp gross-sales drop from April to July 2020, followed by gradual recovery.
- **Quarterly quantity:** Q1 had the highest reported sold quantity (7.01M units); Q3 had the lowest (2.08M units).
- **Channel performance:** Retailer was the leading channel in FY2021, contributing 73.22% of gross sales (1,924.17M).
- **Product performance:** The presentation reports AQ Pen Drive 2 IN 1 as the leading product in Network & Storage, with 701K units sold.

## SQL skills demonstrated

- `SELECT`, `WHERE`, `DISTINCT`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY`, `ORDER BY`, `LIMIT`
- `INNER JOIN`
- Common Table Expressions (CTEs)
- Subqueries
- `CROSS JOIN`
- Window functions: `RANK()`
- Conditional logic: `CASE WHEN`
- Date functions: `DATE_FORMAT()`, `MONTH()`
- Numeric and string functions: `ROUND()`, `CONCAT()`, `MOD()`

## Repository structure

```text
AtliQ-Hardware-SQL-Portfolio/
├── README.md
└── SQL_Files/
    ├── q01_apac_markets_where_atliq_exclusive_operates.sql
    ├── q02_percentage_increase_in_unique_products_in_2021_vs_2020.sql
    ├── q03_unique_product_count_by_segment.sql
    ├── q04_segment_with_the_largest_increase_in_unique_products.sql
    ├── q05_products_with_the_highest_and_lowest_manufacturing_costs.sql
    ├── q06_top_five_indian_customers_by_average_pre_invoice_discount_in_fy2021.sql
    ├── q07_monthly_gross_sales_report_for_atliq_exclusive.sql
    ├── q08_quarter_with_the_highest_total_sold_quantity_in_fy2020.sql
    ├── q09_gross_sales_contribution_by_channel_in_fy2021.sql
    └── q10_top_three_products_by_sold_quantity_in_each_division_in_fy2021.sql
```

## How to use this project

1. Clone or download this repository.
2. Open the SQL file for the business question you want to explore in MySQL Workbench or another MySQL-compatible SQL editor.
3. Connect to the AtliQ challenge database and select the relevant database/schema.
4. Run the queries individually, in order, and review the result sets.
5. Compare the outputs with the findings documented above and in the project presentation.

> **Dataset note:** The challenge database is not included in this repository. You need access to the corresponding AtliQ challenge schema to execute the queries.

## Validation notes

The 10 SQL files are organized from the queries supplied in my project document, with one business question per file. The query logic has been retained, with comments and formatting added for readability. Before publishing, validate the results against your own MySQL database.

In particular:
- Queries 7 and 9 join `fact_gross_price` to `fact_sales_monthly` using `product_code`. Check the table grain and schema; if gross-price records are fiscal-year-specific, the join may also need the fiscal-year key to avoid unintended row matching or duplication.
- Query 7 filters `Atliq Exclusive` with a trailing space in the supplied SQL. Confirm whether that space is present in the database value; otherwise remove it.
- Query 8 uses explicit date boundaries for the fiscal quarters. Confirm that those boundaries match the date coverage and fiscal calendar in the challenge dataset.
- Query 10's original output alias was misspelled as `told_sold_quantity`; it is named `total_sold_quantity` in the organized script for clarity. The calculation is unchanged.

## Project presentation

A presentation summarizing the 10 questions and their findings can be added to a `presentation/` folder in this repository as a PDF.

---

**Project type:** SQL / Data Analytics  
**Business focus:** Consumer goods, sales, customers, and product analysis


## Repository structure

```text
AtliQ-Hardware-SQL-Analysis/
├── README.md
└── SQL_Files/
    ├── q01_...sql
    ├── q02_...sql
    ├── q03_...sql
    ├── q04_...sql
    ├── q05_...sql
    ├── q06_...sql
    ├── q07_...sql
    ├── q08_...sql
    ├── q09_...sql
    └── q10_...sql
```
