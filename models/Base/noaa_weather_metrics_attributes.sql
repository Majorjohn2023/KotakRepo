-- models/noaa/noaa_weather_metrics_attributes.sql

{{ config(materialized='view') }}

select
    VARIABLE,
    VARIABLE_NAME,
    MEASURE,
    UNIT,
    FREQUENCY,
    MEASUREMENT_TYPE
from {{ source('environmental_data', 'NOAA_WEATHER_METRICS_ATTRIBUTES') }}
