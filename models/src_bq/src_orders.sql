{{
    config(
        materialized='table'
    )
}}

SELECT * 
FROM {{ source('dbt_dswamy', 'orders') }}
