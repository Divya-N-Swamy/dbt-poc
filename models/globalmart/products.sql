Select
    productid,
    ProductName,
    Category,
    SubCategory,
    Sum(orderprofit) as profit 
from {{ ref('orders') }}
group by
    productid,
    ProductName,
    Category,
    SubCategory