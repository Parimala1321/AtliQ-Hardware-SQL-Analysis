/*
===============================================================================
BUSINESS QUESTION 06
Top five Indian customers by average pre-invoice discount in FY2021

PROJECT : AtliQ Hardwares — SQL Analytics Project
AUTHOR  : Parimala
TOOL    : MySQL
===============================================================================
*/

SELECT
    c.customer_code,
    c.customer,
    ROUND(AVG(fp.pre_invoice_discount_pct), 4) AS avg_discount_percentage
FROM dim_customer AS c
JOIN fact_pre_invoice_deductions AS fp
    ON c.customer_code = fp.customer_code
WHERE fp.fiscal_year = '2021'
  AND c.market = 'India'
GROUP BY
    c.customer_code,
    c.customer
ORDER BY avg_discount_percentage DESC
LIMIT 5;
