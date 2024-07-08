WITH source_count AS (
    SELECT COUNT(*) AS count
    FROM `sodium-sunup-428412-a4`.`dbt_dswamy`.`src_orders`
),
target_count AS (
    SELECT COUNT(*) AS count
    FROM {{ ref('orders') }}
)

SELECT
    source_count.count AS source_count,
    target_count.count AS target_count
FROM
    source_count, target_count
WHERE
    source_count.count != target_count.count