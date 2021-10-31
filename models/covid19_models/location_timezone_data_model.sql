{{ config(materialized='table') }}

Select distinct location, 
Time_zone as timezone 
from {{source("covid19_data", "ALL_DATA")}}