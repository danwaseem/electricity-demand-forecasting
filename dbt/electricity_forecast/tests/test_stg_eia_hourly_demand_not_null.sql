-- Verify no null values in key columns

select *
from {{ ref('stg_eia_hourly_demand') }}
where PERIOD_DATE is null
   or RESPONDENT is null
   or DEMAND_VALUE is null
