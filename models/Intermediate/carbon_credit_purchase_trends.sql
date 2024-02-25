-- models/intermediate/carbon_credit_purchase_trends.sql
{{ config(materialized="view") }}

with
    aggregated_purchases as (
        select date_trunc('month', date) as month, sum(value) as total_purchases
        from {{ ref("carbon_credit_purchase_timeseries") }}
        group by 1
    )

select
    month,
    total_purchases,
    lag(total_purchases) over (order by month) as previous_month_purchases,
    (
        total_purchases - lag(total_purchases) over (order by month)
    ) as month_over_month_change
from aggregated_purchases
order by
    month

    -- asdadcadsc
    
-- adcadcsac