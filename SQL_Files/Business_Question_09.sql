/*
===============================================================================
BUSINESS QUESTION 09
Which channel helped to bring more gross sales in the fiscal year 2021
and the percentage of contribution?
===============================================================================
*/

WITH cte1 AS (
    SELECT
        dc.channel,
        ROUND(
            SUM(fg.gross_price * fm.sold_quantity / 1000000),
            2
        ) AS gross_sales_mln
    FROM fact_gross_price AS fg
    JOIN fact_sales_monthly AS fm
        ON fg.product_code = fm.product_code
    JOIN dim_customer AS dc
        ON fm.customer_code = dc.customer_code
    WHERE fm.fiscal_year = 2021
    GROUP BY dc.channel
),
cte2 AS (
    SELECT
        SUM(gross_sales_mln) AS total
    FROM cte1
)
SELECT
    cte1.channel,
    CONCAT(cte1.gross_sales_mln, ' M') AS gross_sales_mln,
    CONCAT(
        ROUND((cte1.gross_sales_mln * 100) / cte2.total, 2),
        ' %'
    ) AS percentage
FROM cte1
CROSS JOIN cte2
ORDER BY percentage DESC;
