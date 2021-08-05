SELECT DISTINCT product_name
FROM OE.product_information p 
JOIN oe.order_items oi ON oi.product_id = p.product_id
WHERE oi.quantity >100
SELECT DISTINCT product_name
FROM OE.product_information
WHERE product_id IN (
 SELECT product_id
 FROM OE.order_items
 WHERE quantity >100
 )
ORDER BY product_name

SELECT DISTINCT product_name
FROM oe.product_information p
JOIN oe.order_items oi ON p.product_id = oi.product_id
JOIN oe.orders o ON oi.order_id = o.order_id
WHERE trunc(order_date, 'year') = '1-JAN-2007'
ORDER BY product_name;
--List all orders for which there is an item, sold at the minimum
--price.
SELECT * FROM oe.orders
 WHERE order_id IN (
 SELECT order_id FROM oe.order_items
 WHERE (product_id, unit_price) IN (
 SELECT product_id, min_price
 FROM oe.product_information
 )
);
