SELECT
  order_id,
  user_id,
  created_at,
  status,
  CASE 
    WHEN status = 'Complete' THEN 'Completo'
    WHEN status = 'Pending' THEN 'Pendente'
    ELSE 'Outro'
  END AS status_pt
FROM {{ ref('stg_orders') }}