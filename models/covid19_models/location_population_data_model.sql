{{ config(materialized='table') }}
SELECT DATE(DATE) as DATE, LOCATION, Population, Population_Density
FROM {{source("covid19_data", "ALL_DATA")}}
