# -- 코드를 입력하세요
# WITH V AS (SELECT BOOK_ID, SUM(SALES) AS SALES FROM BOOK_SALES
#           WHERE LEFT(SALES_DATE, 7) = '2022-01'
#           GROUP BY BOOK_ID)
          
# SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
# FROM BOOK B
# JOIN V ON B.BOOK_ID = V.BOOK_ID
# GROUP BY CATEGORY
# ORDER BY CATEGORY









WITH V AS (
SELECT BOOK_ID, SUM(SALES) AS TOTAL_SALES
FROM BOOK_SALES
WHERE LEFT(SALES_DATE, 7) = '2022-01'
GROUP BY BOOK_ID)

SELECT B.CATEGORY, SUM(V.TOTAL_SALES) AS TOTAL_SALES
FROM BOOK B
JOIN V ON B.BOOK_ID = V.BOOK_ID
GROUP BY CATEGORY
ORDER BY CATEGORY

