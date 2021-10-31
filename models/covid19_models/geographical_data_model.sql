{{ config(materialized='table') }}

Select distinct LOCATION, 
Total_Regencies, Total_Cities, 
Total_Districts, 
Total_Urban_Villages, 
Area_km_2_, Longitude, latitude
from  {{source("covid19_data", "ALL_DATA")}}
group by LOCATION