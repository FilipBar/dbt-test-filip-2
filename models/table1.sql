{{ config(
    materialized="table"
) }}

SELECT * FROM {{source('in.c-dbt_jaffle_shop','raw_customers')}} -- použivat sources!