{{ config(materialized='table') }}

with hourly as (
    select * from {{ ref('stg_eia_hourly_demand') }}
),

aggregated as (
    select
        period_date,
        respondent,
        avg(demand_value) as avg_demand_mw,
        min(demand_value) as min_demand_mw,
        max(demand_value) as max_demand_mw
    from hourly
    group by 1, 2
)

select * from aggregated
