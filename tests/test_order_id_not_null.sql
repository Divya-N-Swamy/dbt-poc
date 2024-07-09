SELECT *
FROM
    {{ source('dbt_dswamy', 'orders') }}
WHERE
    OrderID IS NULL