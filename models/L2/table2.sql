SELECT *,"id" + 10000 AS "new_id" FROM {{ref('join_table1')}}