--Correlative Subqueries
SELECT *
FROM OE.product_information p
WHERE p.product_id IN (
 SELECT oi.product_id
 FROM OE.order_items oi
WHERE oi.unit_price = p.min_price
 )
SELECT unit_price
FROM OE.order_items


SELECT 
 MAX(unit_price), 
 MIN(unit_price), 
 ROUND(AVG (unit_price),2),
 SUM (unit_price),
 SUM(unit_price * quantity)
FROM OE.order_items
WHERE order_id IN (
 SELECT order_id FROM OE.orders
 WHERE TRUNC(order_date,'year') = '01-JAN-2007'
 )

SELECT 
 COUNT(*) as Total_orders,
 count(sales_rep_id) as orders_by_sales_reps,
 COUNT(DISTINCT sales_rep_id) as Uq_sales_reps
FROM OE.orders
WHERE TRUNC(order_date,'year') = '01-JAN-2007'

SELECT DISTINCT product_status 
FROM OE.product_information
SELECT product_status,COUNT(*) 
FROM OE.product_information
GROUP BY product_status

SELECT supplier_id,product_status,COUNT(*)as cnt
FROM OE.product_information
GROUP BY product_status, supplier_id
ORDER BY supplier_id, product_status