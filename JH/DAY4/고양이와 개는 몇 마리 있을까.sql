SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE LIKE 'Cat' OR ANIMAL_TYPE LIKE 'Dog'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE