-- models/carbon_intensity_timeseries.sql.Just checking

-- {{ config(materialized='view') }}

-- select
--     DATE,
--     VARIABLE,
--     GEO_ID,
--     avg(VALUE) as average_intensity,
--     sum(VALUE) as total_intensity
-- from {{ source('environmental_data', 'CARBON_INTENSITY_TIMESERIES') }}
-- group by DATE, VARIABLE, GEO_ID




-- models/carbon_intensity_timeseries.sql

{{ config(materialized='view') }}

with data as (
    select
        DATE,
        VARIABLE,
        
        GEO_ID,
        avg(VALUE) as average_intensity,
        sum(VALUE) as total_intensity

    from {{ source('environmental_data', 'CARBON_INTENSITY_TIMESERIES') }}
    group by DATE, VARIABLE,GEO_ID
)

select
    DATE,
    VARIABLE,
    {{ dbt_utils.date_trunc('month', 'DATE') }} as month_start_date,
    average_intensity,
    total_intensity
from data

