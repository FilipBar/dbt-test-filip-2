SELECT t1."id"
        ,t2."first_name" || ' ' || t2."last_name" AS "name"
        ,t1."order_date"
        ,t1."status"
FROM {{ref('orders')}} t1
LEFT JOIN {{ref('customers')}} t2 ON t1."user_id" = t2."id"