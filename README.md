# AtliQ Hardwares — SQL Analytics Project

**Business Insights from Ad-Hoc Analysis**  


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
