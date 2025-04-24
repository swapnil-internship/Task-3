SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT order_id, SUM(unit_price * quantity) AS order_total
    FROM Order_Items
    GROUP BY order_id
) AS OrderTotals;
