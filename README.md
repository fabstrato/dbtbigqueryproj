# dbtbigqueryproj

Projeto dbt com transformações de dados do dataset thelook_ecommerce.

## Estrutura

- `models/staging/`: Modelos brutos
  - `stg_orders.sql`: Orders transformados
  - `stg_users.sql`: Users transformados

- `models/marts/`: Modelos prontos para análise
  - `mart_orders.sql`: Orders com transformações
  - `mart_users.sql`: Joins de users e orders

## Como rodar

```bash
dbt run    # Executa todos os modelos
dbt test   # Roda testes de qualidade
```

## Estrutura de dados

### stg_orders
- order_id
- user_id
- created_at
- status

### stg_users
- user_id
- first_name
- last_name
- email
- created_at

### mart_orders
- order_id
- user_id
- created_at
- status_pt

### mart_users
- order_id
- user_id
- first_name
- last_name
- created_at
- status_pt