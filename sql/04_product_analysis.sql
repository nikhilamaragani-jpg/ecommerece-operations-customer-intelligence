-- Product/category questions.
-- Each row in order_items is an order line; there is no quantity column.

SELECT
  COALESCE(p.product_category_name, 'Unknown') AS category,
  SUM(oi.price) AS revenue,
  COUNT(*) AS order_lines,
  COUNT(DISTINCT oi.order_id) AS orders,
  SUM(oi.freight_value) AS freight_value
FROM olist_order_items_dataset oi
JOIN olist_orders_dataset o ON oi.order_id = o.order_id
LEFT JOIN olist_products_dataset p
  ON oi.product_id = p.product_id
WHERE o.order_status NOT IN ('canceled', 'unavailable')
GROUP BY 1
ORDER BY revenue DESC;
