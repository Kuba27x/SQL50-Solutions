-- Problem 1327. List the Products Ordered in a Period
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- Difficulty: Easy

SELECT p.product_name, SUM(unit) AS unit
FROM products p
JOIN orders o
ON p.product_id = o.product_id
AND YEAR(o.order_date)=2020 AND MONTH(o.order_date)=2
GROUP BY o.product_id
HAVING unit >= 100

