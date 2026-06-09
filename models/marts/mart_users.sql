SELECT
  o.order_id,
  u.user_id,
  u.first_name,
  u.last_name,
  o.created_at,
  o.status_pt
FROM {{ ref('mart_orders') }} o
LEFT JOIN {{ ref('stg_users') }} u ON o.user_id = u.user_id