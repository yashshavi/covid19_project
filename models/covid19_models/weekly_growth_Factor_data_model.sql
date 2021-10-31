{{ config(materialized='table') }}

SELECT distinct location, 
DATE(DATE), Growth_Factor_of_New_Cases as Growth_Factor_of_New_Cases,
Growth_Factor_of_New_Deaths as Growth_Factor_of_New_Deaths
FROM {{source("covid19_data", "ALL_DATA")}}
