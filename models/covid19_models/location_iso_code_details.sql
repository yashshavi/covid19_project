{{ config(materialized='table') }}

Select distinct 
LOCATION, 
LOCATION_ISO_CODE 
FROM 
{{source("covid19_data", "ALL_DATA")}}

