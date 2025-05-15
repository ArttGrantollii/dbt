{{ config(materialized='view') }}

SELECT
  `Country_Region` AS country_region,
  Confirmed,
  Deaths,
  Recovered,
  Active,
  `New cases` AS new_cases,
  `New deaths` AS new_deaths,
  `New recovered` AS new_recovered,
  `Deaths _ 100 Cases` AS deaths_per_100_cases,
  `Recovered _ 100 Cases` AS recovered_per_100_cases,
  `Deaths _ 100 Recovered` AS deaths_per_100_recovered,
  `Confirmed last week` AS confirmed_last_week,
  `1 week change` AS one_week_change,
  `1 week % increase` AS one_week_pct_increase,
  `WHO Region` AS who_region
FROM `hazel-hall-447215-a4.dbt_agrantolli.covid_19`
