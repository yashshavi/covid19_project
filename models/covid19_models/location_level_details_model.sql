{{ config(materialized='table') }}

Select distinct LOCATION,
LOCATION_LEVEL 
FROM {{source("covid19_data", "ALL_DATA")}}