CREATE VIEW HighValueCustomers AS
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
left join Orders o ON c.customer_id = o.customer_id
left join order_items i on o.order_id = i.order_id
GROUP BY c.customer_id
HAVING total_spent > 10000;
