/*
===============================================================================
BUSINESS QUESTION 07
Get the complete report of the Gross sales amount for the customer “Atliq
Exclusive” for each month. 
===============================================================================
*/

SELECT
    fm.fiscal_year,
    CONCAT(
        DATE_FORMAT(fm.date, '%M'),
        '-',
        DATE_FORMAT(fm.date, '%Y')
    ) AS fiscal_month,
    ROUND(SUM(fg.gross_price * fm.sold_quantity), 2) AS gross_sales
FROM fact_gross_price AS fg
JOIN fact_sales_monthly AS fm
    ON fg.product_code = fm.product_code
JOIN dim_customer AS dc
    ON dc.customer_code = fm.customer_code
WHERE dc.customer = 'Atliq Exclusive '
GROUP BY
    fm.fiscal_year,
    fiscal_month
ORDER BY
    fm.fiscal_year,
    MOD(MONTH(fm.date) - 9 + 12, 12);
