{{
    config(
        materialized='table'
    )
}}

Select 
    c.customerid,
    c.Segment,
    c.Country,
    Sum(o.orderprofit) as profit
from {{ ref('raw_customers') }} as c
join {{ ref('orders') }} as o 
on c.customerid=o.customerid
group by
    c.customerid,
    c.Segment,
    c.Country
