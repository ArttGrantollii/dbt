{{ config(materialized='view') }}

SELECT
  *,
  SAFE_DIVIDE(Deaths, Confirmed) * 100 AS case_fatality_rate,
  SAFE_DIVIDE(Recovered, Confirmed) * 100 AS recovery_rate,
  RANK() OVER (PARTITION BY who_region ORDER BY Confirmed DESC) AS regional_confirmed_rank
FROM {{ ref('stg_country_stats') }}
