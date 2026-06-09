SELECT
  oi.order_item_id,
  oi.order_id,
  o.user_id,
  u.first_name,
  u.last_name,
  oi.sale_price,
  o.created_at,
  o.status_pt,
  oi.status AS item_status
FROM {{ ref('stg_order_items') }} oi
LEFT JOIN {{ ref('mart_orders') }} o ON oi.order_id = o.order_id
LEFT JOIN {{ ref('stg_users') }} u ON o.user_id = u.user_id