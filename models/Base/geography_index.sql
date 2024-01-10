-- models/geography/geography_index.sql

{{ config(materialized='view') }}

select
    GEO_ID,
    GEO_NAME,
    LEVEL,
    ISO_NAME,
    ISO_ALPHA2,
    ISO_ALPHA3,
    ISO_NUMERIC_CODE,
    ISO_3166_2_CODE
from {{ source('environmental_data', 'GEOGRAPHY_INDEX') }}
