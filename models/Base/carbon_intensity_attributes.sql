-- models/carbon/carbon_intensity_attributes.sql

{{ config(materialized='view') }}
{{ config(
    tags=["daily", "analytics"]
) }}

select
    VARIABLE,
    VARIABLE_NAME,
    UNIT,
    FREQUENCY
from {{ source('environmental_data', 'CARBON_INTENSITY_ATTRIBUTES') }}
