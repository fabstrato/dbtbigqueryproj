Projeto dbt com transformações de dados do dataset thelook_ecommerce.

## Estrutura

### Staging Models (`models/staging/`)
Raw data com limpeza básica e validações:

- **stg_orders**: Orders brutos com validação de PK
- **stg_users**: Users brutos com validação de PK
- **stg_order_items**: Order items brutos com validação de PK

### Mart Models (`models/marts/`)
Dados prontos para análise:

- **mart_orders**: Orders com status traduzido
- **mart_users**: Join de users com orders
- **mart_order_details**: Join completo com detalhes dos pedidos (orders + users + items)

## Como rodar

```bash
dbt run    # Executa todos os modelos
dbt test   # Roda testes de qualidade
```

## Data Quality

Todos os modelos têm testes de:
- `unique`: IDs são únicos
- `not_null`: Colunas críticas não são nulas

14 testes rodam automaticamente em cada execução.

## Dataset

Usa `bigquery-public-data.thelook_ecommerce` (e-commerce público do BigQuery).