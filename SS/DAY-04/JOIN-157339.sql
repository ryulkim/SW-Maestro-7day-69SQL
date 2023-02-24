SELECT C.CAR_ID, C.CAR_TYPE, FLOOR(C.DAILY_FEE * 30 * (100 - D.DISCOUNT_RATE) / 100) AS FEE#, D.DISCOUNT_RATE, D.DURATION_TYPE
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H ON C.CAR_ID = H.CAR_ID
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN D ON C.CAR_TYPE = D.CAR_TYPE
WHERE C.CAR_TYPE IN ('세단', 'SUV')
AND C.CAR_ID NOT IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE <= '2022-11-30' AND END_DATE >= '2022-11-01'
)
AND D.DURATION_TYPE = '30일 이상'
GROUP BY 1, 2
HAVING FEE >= 500000 AND FEE < 2000000
ORDER BY 3 DESC, 2, 1 DESC