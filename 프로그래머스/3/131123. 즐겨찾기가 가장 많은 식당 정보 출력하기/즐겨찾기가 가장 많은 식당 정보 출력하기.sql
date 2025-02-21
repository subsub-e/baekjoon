# -- 코드를 입력하세요
# WITH V AS (SELECT MAX(FAVORITES)
# FROM REST_INFO
# GROUP BY FOOD_TYPE)

# SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
# FROM REST_INFO
# WHERE FAVORITES IN (SELECT * FROM V)
# GROUP BY FOOD_TYPE
# ORDER BY FOOD_TYPE DESC




# WITH V AS (
#     SELECT MAX(FAVORITES) AS F
#     FROM REST_INFO
#     GROUP BY FOOD_TYPE
# )

# SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
# FROM REST_INFO
# WHERE FAVORITES IN (SELECT * FROM V)
# GROUP BY FOOD_TYPE
# ORDER BY FOOD_TYPE DESC;

SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) IN (
    SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
)
ORDER BY FOOD_TYPE DESC;