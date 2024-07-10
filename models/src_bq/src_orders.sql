

{{
    config(
        materialized='table'
    )
}}

Select * from 
{{ source('dbt_dswamy', 'orders') }}



