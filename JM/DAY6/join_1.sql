-- 조건에 맞는 도서와 저자 리스트 출력하기
SELECT BOOK_ID,AUTHOR_NAME,DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK B, AUTHOR A
WHERE B.AUTHOR_ID = A.AUTHOR_ID
AND
CATEGORY = '경제'
ORDER BY PUBLISHED_DATE