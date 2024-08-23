SELECT OrderID,ordersellingprice
    --COUNT(*) AS invalid_rows
FROM
    `sodium-sunup-428412-a4.dbt_dswamy.raw_orders`
   WHERE
    ordersellingprice <= 0