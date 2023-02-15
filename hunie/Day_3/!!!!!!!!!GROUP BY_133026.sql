SELECT A.INGREDIENT_TYPE, SUM(B.TOTAL_ORDER) TOTAL_ORDER 
FROM ICECREAM_INFO  A, FIRST_HALF B
WHERE A.FLAVOR = B.FLAVOR
GROUP BY A.INGREDIENT_TYPE
ORDER BY B.TOTAL_ORDER ASC ;
