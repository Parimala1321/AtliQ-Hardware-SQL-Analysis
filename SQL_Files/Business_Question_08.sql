/*
===============================================================================
BUSINESS QUESTION 08
 In which quarter of 2020, got the maximum total_sold_quantity?
===============================================================================
*/

SELECT
    CASE
        WHEN date BETWEEN '2019-09-01' AND '2019-11-01' THEN 'Q1'
        WHEN date BETWEEN '2019-12-01' AND '2020-02-01' THEN 'Q2'
        WHEN date BETWEEN '2020-03-01' AND '2020-05-01' THEN 'Q3'
        WHEN date BETWEEN '2020-06-01' AND '2020-08-01' THEN 'Q4'
    END AS quarters,
    CONCAT(
        ROUND(SUM(sold_quantity) / 1000000, 2),
        ' M'
    ) AS total_sold
FROM fact_sales_monthly
WHERE fiscal_year = 2020
GROUP BY quarters;
