{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM {{ source('dbt_dswamy', 'orders') }}

--SELECT * FROM `sodium-sunup-428412-a4.dbt_dswamy.orders`;


