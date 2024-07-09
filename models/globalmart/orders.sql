{{
    config(
        materialized='table'
    )
}}

Select 
-- from raw_orders
    o.customerid,
    o.productid,
    o.OrderID,
    o.OrderDate,
    o.ShipDate,
    o.ShipMode,
    o.ordersellingprice,
    o.ordercostprice,
    o.ordersellingprice - o.ordercostprice as orderprofit,
-- from raw_customers
    c.CustomerName,
    c.Segment,
    c.Country,	
    c.State,
-- from raw_product
    p.Category,
    p.ProductName,
    p.SubCategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
    on o.customerid=c.customerid
left join {{ ref('raw_product') }} as p
    on o.productid=p.productid

