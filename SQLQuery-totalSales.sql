SELECT CITY,SUM(LINETOTAL) AS TOPLAMSALE FROM SALEORDERS

GROUP BY CITY

ORDER BY CITY