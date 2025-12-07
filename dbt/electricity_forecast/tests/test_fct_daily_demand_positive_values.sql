-- Verify all demand values are positive and logical

select *
from {{ ref('fct_daily_demand') }}
where avg_demand_mw <= 0
   or min_demand_mw <= 0
   or max_demand_mw <= 0
   or min_demand_mw > max_demand_mw
