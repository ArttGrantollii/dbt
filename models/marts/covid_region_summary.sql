SELECT
  who_region,
  COUNT(DISTINCT country_region) AS country_count,
  SUM(Confirmed) AS total_confirmed,
  SUM(Deaths) AS total_deaths,
  SUM(Recovered) AS total_recovered,
  AVG(deaths_per_100_cases) AS avg_deaths_per_100_cases,
  AVG(recovered_per_100_cases) AS avg_recovered_per_100_cases
FROM {{ ref('stg_country_stats') }}
GROUP BY who_region
ORDER BY total_confirmed DESC
