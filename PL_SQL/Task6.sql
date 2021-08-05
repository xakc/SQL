--По зададен конкретен product, 
--изкарайте списък с всички клиенти, 
--които са закупили повече от 
--3 бройки от съответния продукт в един order.
--=======
SELECT c.customer_id, c.cust_first_name, c.cust_last_name 
FROM OE.CUSTOMERS c
JOIN OE.orders o ON o.customer_id = c.customer_id
JOIN OE.order_items oi ON oi.order_id = o.order_id
JOIN OE.product_information pi ON pi.product_id = oi.product_id
WHERE pi.product_id=1234
AND oi.quantity >3