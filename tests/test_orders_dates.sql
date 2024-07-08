SELECT OrderDate,ShipDate
    --COUNT(*) AS invalid_rows
FROM
    `sodium-sunup-428412-a4.dbt_dswamy.orders`
WHERE
    OrderDate > ShipDate