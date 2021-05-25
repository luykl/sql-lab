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
SELECT * FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

SELECT * FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

SELECT * FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;
-- 15
SELECT orders.ship_city, orders.ship_country FROM orders
JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.city = 'London';
-- 16
SELECT orders.ship_name FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE products.discontinued = 1;
-- 17
SELECT employees.first_name FROM employees WHERE reports_to IS null;
-- 18
SELECT subordinate.first_name FROM employees AS subordinate
JOIN employees AS manager ON subordinate.reports_to = manager.employee_id
WHERE manager.first_name = 'Andrew'