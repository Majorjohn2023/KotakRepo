-- models/analysis/total_carbon_credits_annually.sql

{{ config(materialized='view') }}
select
    DATE_TRUNC('year', DATE) as year,
    sum(VALUE) as total_credits_purchased
from {{ ref('carbon_credit_purchase_timeseries') }}
group by DATE_TRUNC('year', DATE)
