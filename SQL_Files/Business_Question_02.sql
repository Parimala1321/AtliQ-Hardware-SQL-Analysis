/*
===============================================================================
BUSINESS QUESTION 02
What is the percentage of unique product increase in 2021 vs. 2020?
===============================================================================
*/

WITH CTE2020 AS (
    SELECT
        COUNT(DISTINCT product_code) AS product_code
    FROM fact_sales_monthly
    WHERE fiscal_year = '2020'
),
CTE2021 AS (
    SELECT
        COUNT(DISTINCT product_code) AS product_code
    FROM fact_sales_monthly
    WHERE fiscal_year = '2021'
)
SELECT
    CTE2020.product_code AS unique_products_2020,
    CTE2021.product_code AS unique_products_2021,
    CONCAT(
        ROUND(
            ((CTE2021.product_code - CTE2020.product_code) * 100)
            / CTE2020.product_code,
            2
        ),
        ' %'
    ) AS percentage_chg
FROM CTE2020
CROSS JOIN CTE2021;
