SELECT
  *,
  RANK() OVER (PARTITION BY who_region ORDER BY Confirmed DESC) AS regional_confirmed_rank
FROM {{ ref('stg_country_stats') }}
