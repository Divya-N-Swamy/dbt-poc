{{
    config(
        materialized='table'
    )
}}

Select * from {{ ref('raw_customers') }}