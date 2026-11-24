/*
===============================================================================
BUSINESS QUESTION 10
Get the Top 3 products in each division that have a high
total_sold_quantity in the fiscal_year 2021?
===============================================================================
*/

WITH cte AS (
    SELECT
        dp.product,
        dp.product_code,
        dp.division,
        SUM(fm.sold_quantity) AS total_sold_quantity,
        RANK() OVER (
            PARTITION BY dp.division
            ORDER BY SUM(fm.sold_quantity) DESC
        ) AS rank_order
    FROM dim_product AS dp
    JOIN fact_sales_monthly AS fm
        ON dp.product_code = fm.product_code
    WHERE fm.fiscal_year = 2021
    GROUP BY
        dp.product,
        dp.product_code,
        dp.division
)
SELECT
    *
FROM cte
WHERE rank_order <= 3
ORDER BY
    division,
    rank_order;
