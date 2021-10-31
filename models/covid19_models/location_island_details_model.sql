{{ config(materialized='table') }}

Select distinct location, 
ISLAND 
from {{source("covid19_data", "ALL_DATA")}}
group by location, ISLAND
