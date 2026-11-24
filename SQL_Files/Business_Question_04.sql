/*
===============================================================================
BUSINESS QUESTION 04
Segment with the largest increase in unique products

PROJECT : AtliQ Hardwares — SQL Analytics Project
AUTHOR  : Parimala
TOOL    : MySQL
===============================================================================
*/

WITH cte1 AS (
    SELECT
        COUNT(DISTINCT fm.product_code) AS product_count,
        dp.segment,
        fm.fiscal_year
    FROM fact_sales_monthly AS fm
    JOIN dim_product AS dp
        ON dp.product_code = fm.product_code
    WHERE fm.fiscal_year = '2020'
    GROUP BY dp.segment, fm.fiscal_year
),
cte2 AS (
    SELECT
        COUNT(DISTINCT fm.product_code) AS product_count,
        fm.fiscal_year,
        dp.segment
    FROM fact_sales_monthly AS fm
    JOIN dim_product AS dp
        ON dp.product_code = fm.product_code
    WHERE fm.fiscal_year = '2021'
    GROUP BY dp.segment, fm.fiscal_year
)
SELECT
    cte1.segment,
    cte1.product_count AS unique_product_2020,
    cte2.product_count AS unique_product_2021,
    (cte2.product_count - cte1.product_count) AS difference
FROM cte1
JOIN cte2
    ON cte1.segment = cte2.segment
ORDER BY difference DESC;
