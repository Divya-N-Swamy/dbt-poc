Select 
-- from raw_orders
o.OrderID,
o.OrderDate,
o.ShipDate,
o.ShipMode,
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
left join {{ ref('raw_products') }} as p
on p.productid=o.productid