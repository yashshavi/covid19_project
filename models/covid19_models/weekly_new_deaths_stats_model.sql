{{ config(materialized='table') }}

SELECT DATE(DATE) AS DATE, LOCATION, 
New_Deaths_per_Million AS New_Deaths_per_Million, Total_Deaths_per_Million AS Total_Deaths_per_Million
FROM {{source("covid19_data", "ALL_DATA")}}