{{ config(
    materialized="table"
) }}

SELECT "id","first_name" FROM {{source('in.c-dbt_jaffle_shop','raw_customers')}} -- použivat sources!