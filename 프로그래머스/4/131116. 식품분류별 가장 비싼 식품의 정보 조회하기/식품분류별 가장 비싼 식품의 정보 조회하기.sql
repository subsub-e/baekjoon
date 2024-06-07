# -- 코드를 입력하세요
# WITH V AS (SELECT MAX(PRICE)
# FROM FOOD_PRODUCT
# GROUP BY CATEGORY)

# SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
# FROM FOOD_PRODUCT
# WHERE PRICE IN (SELECT * FROM V) AND CATEGORY IN ('과자', '국', '김치', '식용유')
# ORDER BY MAX_PRICE DESC













WITH V AS (
    SELECT MAX(PRICE) AS PRICE
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
)

SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT F
WHERE PRICE IN (SELECT * FROM V) AND CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY MAX_PRICE DESC