CREATE VIEW OrderTotals AS
SELECT order_id, SUM(unit_price * quantity) AS total_amount
FROM Order_Items
GROUP BY order_id;
