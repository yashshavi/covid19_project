{{ config(materialized='table') }}

SELECT DATE(DATE) AS DATE, LOCATION, New_Cases_per_Million AS New_Cases_per_Million, 
Total_Cases_per_Million AS Total_Cases_per_Million
FROM {{source("covid19_data", "ALL_DATA")}}
