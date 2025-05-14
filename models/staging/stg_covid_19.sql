SELECT
  `Country_Region` AS country_region,
  Confirmed,
  Deaths,
  Recovered,
  Active,
  `Deaths _ 100 Cases` AS deaths_per_100_cases,
  `Recovered _ 100 Cases` AS recovered_per_100_cases,
  `Deaths _ 100 Recovered` AS deaths_per_100_recovered
FROM `hazel-hall-447215-a4.dbt_agrantolli.covid_19`
