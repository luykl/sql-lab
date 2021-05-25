-- 1
SELECT * FROM customers;
-- 2
SELECT DISTINCT country FROM customers;
-- 3
SELECT * FROM customers where customer_id LIKE 'BL%';
-- 4
SELECT * FROM orders LIMIT 100;
-- 5
SELECT * FROM customers WHERE postal_code= '1010' 
OR postal_code= '3012' 
OR postal_code= '12209' 
OR postal_code= '05023';
-- 6
SELECT * FROM orders WHERE ship_region IS NOT NULL;
-- 7
SELECT * FROM customers ORDER BY country, city; 
-- 8
INSERT INTO customers (customer_id, company_name) 
VALUES ('ABCDE', 'Grand Circus')
-- 9
UPDATE orders SET ship_region = 'EuroZone' 
WHERE ship_country ='France';
-- 10
DELETE FROM order_details WHERE quantity = 1;
-- 11
SELECT AVG(quantity) AS "avg qty",
MAX(quantity) AS "max qty",
MIN(quantity) AS "min qty"
FROM order_details;
-- 12
SELECT AVG(quantity) FROM order_details GROUP BY order_id;
SELECT MAX(quantity) FROM order_details GROUP BY order_id;
SELECT MIN(quantity) FROM order_details GROUP BY order_id;
-- 13
SELECT AVG(quantity) AS "avg qty",
MAX(quantity) AS "max qty",
MIN(quantity) AS "min qty"
FROM order_details
GROUP BY order_id;
-- 14
-- 15
-- 16
-- 17
-- 18