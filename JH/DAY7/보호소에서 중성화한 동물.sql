-- 코드를 입력하세요

SELECT B.ANIMAL_ID, B.ANIMAL_TYPE, B.NAME
FROM ANIMAL_INS AS A
RIGHT JOIN ANIMAL_OUTS AS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.ANIMAL_ID = B.ANIMAL_ID AND A.SEX_UPON_INTAKE != B.SEX_UPON_OUTCOME 
ORDER BY ANIMAL_ID