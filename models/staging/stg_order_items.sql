SELECT
  id AS order_item_id,
  order_id,
  product_id,
  inventory_item_id,
  sale_price,
  status,
  created_at,
  shipped_at,
  delivered_at,
  returned_at
FROM `bigquery-public-data.thelook_ecommerce.order_items`
LIMIT 10000