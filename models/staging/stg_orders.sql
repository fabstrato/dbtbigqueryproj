SELECT
     order_id,
     user_id,
     created_at,
     status
   FROM `bigquery-public-data.thelook_ecommerce.orders`
   LIMIT 100