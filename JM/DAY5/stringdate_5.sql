-- 카테고리 별 상품 개수 구하기

SELECT LEFT(PRODUCT_CODE,2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
