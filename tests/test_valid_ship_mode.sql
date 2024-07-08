SELECT *
    --COUNT(*) AS invalid_rows
FROM
    {{ ref('orders') }}
WHERE
    ShipMode NOT IN ('Unknown', 'Same Day', 'First Class','Second Class','Standard Class')

