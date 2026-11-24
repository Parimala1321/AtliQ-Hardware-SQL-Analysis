/*
===============================================================================
BUSINESS QUESTION 01
APAC markets where Atliq Exclusive operates

PROJECT : AtliQ Hardwares — SQL Analytics Project
AUTHOR  : Parimala
TOOL    : MySQL
===============================================================================
*/

SELECT DISTINCT
    market
FROM dim_customer
WHERE customer = 'Atliq Exclusive'
  AND region = 'APAC';
