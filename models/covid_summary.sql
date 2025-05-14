SELECT
  country_region,
  SUM(Confirmed) AS total_confirmed,
  SUM(Deaths) AS total_deaths,
  SUM(Recovered) AS total_recovered,
  SUM(Active) AS total_active,
  ROUND(AVG(deaths_per_100_cases), 2) AS avg_deaths_per_100_cases,
  ROUND(AVG(recovered_per_100_cases), 2) AS avg_recovered_per_100_cases,
  ROUND(AVG(deaths_per_100_recovered), 2) AS avg_deaths_per_100_recovered
FROM {{ ref('stg_covid_19') }}
GROUP BY country_region
ORDER BY total_confirmed DESC
