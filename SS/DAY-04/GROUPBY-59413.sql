WITH RECURSIVE TEMP AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM TEMP WHERE HOUR < 23
)

(SELECT HOUR(DATETIME) AS HOUR, COUNT(*) AS COUNT
 FROM ANIMAL_OUTS
 GROUP BY 1)
UNION
(SELECT HOUR, (0) AS COUNT
 FROM TEMP
 WHERE HOUR NOT IN 
 (
     SELECT HOUR(DATETIME) AS HOUR
     FROM ANIMAL_OUTS
     GROUP BY 1
 )
)
ORDER BY 1