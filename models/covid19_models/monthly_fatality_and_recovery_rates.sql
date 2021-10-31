{{ config(materialized='table') }}

SELECT distinct location, 
Month(DATE(Date)) as month,
Case_Fatality_Rate AS Case_Fatality_Rate,
Case_Recovered_Rate AS Case_Recovered_Rate
from  {{source("covid19_data", "ALL_DATA")}}