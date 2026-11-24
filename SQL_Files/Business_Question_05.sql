/*
===============================================================================
BUSINESS QUESTION 05
Products with the highest and lowest manufacturing costs

PROJECT : AtliQ Hardwares — SQL Analytics Project
AUTHOR  : Parimala
TOOL    : MySQL
===============================================================================
*/

SELECT
    dp.product,
    dp.product_code,
    fm.manufacturing_cost
FROM dim_product AS dp
JOIN fact_manufacturing_cost AS fm
    ON dp.product_code = fm.product_code
WHERE fm.manufacturing_cost IN (
        SELECT MAX(manufacturing_cost)
        FROM fact_manufacturing_cost
    )
   OR fm.manufacturing_cost IN (
        SELECT MIN(manufacturing_cost)
        FROM fact_manufacturing_cost
    )
ORDER BY fm.manufacturing_cost;
