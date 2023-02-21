{{
  config(
        materialized = 'table'
  )
}}

SELECT "id","user_id","order_date" FROM {{source('in.c-dbt_jaffle_shop','raw_orders')}}
WHERE "order_date"::DATE > '2018-04-01'