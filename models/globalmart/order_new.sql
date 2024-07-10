{{
    config(
        materialized='table'
    )
}}

--Select * from {{ ref('raw_orders') }}
Select * from {{ source('dbt_dswamy', 'customers') }}