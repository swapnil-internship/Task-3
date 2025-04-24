CREATE VIEW ProductSalesSummary AS
SELECT product_id, SUM(quantity) AS total_units_sold, SUM(unit_price * quantity) AS total_revenue
FROM Order_Items
GROUP BY product_id;
