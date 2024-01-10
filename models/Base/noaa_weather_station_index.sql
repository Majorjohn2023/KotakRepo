-- models/noaa_weather_station_index.sql

{{ config(materialized='view') }}

select
    NOAA_WEATHER_STATION_ID,
    NOAA_WEATHER_STATION_NAME,
    COUNTRY_GEO_ID,
    STATE_GEO_ID,
    LATITUDE,
    LONGITUDE,
    ELEVATION
from {{ source('environmental_data', 'NOAA_WEATHER_STATION_INDEX') }}
