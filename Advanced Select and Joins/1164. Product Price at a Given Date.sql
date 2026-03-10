-- Problem 1164. Product Price at a Given Date
-- Link: https://leetcode.com/problems/product-price-at-a-given-date/
-- Difficulty: Medium

WITH LastChanges AS (
    SELECT 
        product_id, 
        new_price,
        RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) as rnk
    FROM products
    WHERE change_date <= '2019-08-16'
)
SELECT p.product_id, IFNULL(lc.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM products) p
LEFT JOIN LastChanges lc ON p.product_id = lc.product_id AND lc.rnk = 1;
