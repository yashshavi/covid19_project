{{ config(materialized='table') }}
SELECT DATE(DATE), LOCATION, Population, Population_Density AS Population_Density
FROM {{source("covid19_data", "ALL_DATA")}}