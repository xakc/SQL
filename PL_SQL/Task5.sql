-- По зададен конкретен клиент
-- -- (customer) по две имена(
-- -- -- cust_first_name и 
-- -- -- cust_last_name) 
-- -- -- и име на склад 
-- извадете имената 
-- и количествата на всички продукти, 
-- закупени от този клиент от този склад, 
-- както и датата на поръчката.

SELECT pi.product_name,
 oi.quantity,
 o.order_date
FROM OE.customers c
JOIN OE.orders o ON o.customer_id = c.customer_id
JOIN OE.order_items oi ON oi.order_id = o.order_id
JOIN OE.product_information pi ON pi.product_id = oi.product_id
JOIN OE.inventories inv ON inv.product_id = pi.product_id
JOIN OE.warehouses wh ON wh.warehouse_id = inv.warehouse_id
WHERE c.CUST_FIRST_NAME = 'Frederic'
AND c.CUST_LAST_NAME = 'Grodin'
AND wh.WAREHOUSE_NAME = 'San Francisco'
