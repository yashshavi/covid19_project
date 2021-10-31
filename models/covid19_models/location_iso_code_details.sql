{{ config(materialized='table') }}

Select distinct 
LOCATION, 
LOCATION_ISO_CODE 
FROM 
{{source("GOOGLE_SHEETS", "COVID_19_INDONESIA_YASHSHAVI_KASHYAP")}}

