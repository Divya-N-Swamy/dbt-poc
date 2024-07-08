SELECT
    COUNT(*) AS invalid_rows
FROM
    `sodium-sunup-428412-a4.dbt_dswamy.orders`
WHERE
    ShipMode NOT IN ('Unknown', 'Same Day', 'First Class','Second Class','Standard Class')

