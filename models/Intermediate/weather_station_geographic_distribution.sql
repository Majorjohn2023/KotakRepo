-- models/intermediate/weather_station_geographic_distribution.sql

{{ config(materialized='view') }}

select
    g.GEO_NAME as country,
    count(distinct w.NOAA_WEATHER_STATION_ID) as number_of_stations
from {{ ref('noaa_weather_station_index') }} w
join {{ ref('geography_index') }} g on w.COUNTRY_GEO_ID = g.GEO_ID
group by g.GEO_NAME
