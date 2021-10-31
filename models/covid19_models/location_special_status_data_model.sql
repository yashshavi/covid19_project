{{ config(materialized='table') }}
SELECT distinct location, SPECIAL_STATUS 
from {{source("covid19_data", "ALL_DATA")}}