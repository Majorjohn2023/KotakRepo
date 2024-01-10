-- models/fema/fema_disaster_declaration_areas_index.sql

{{ config(materialized='view') }}

select
    DISASTER_DECLARATION_RECORD_ID,
    DISASTER_ID,
    FEMA_DESIGNATED_AREA,
    FEMA_PLACE_CODE,
    STATE_GEO_ID,
    COUNTY_GEO_ID,
    FEMA_REGION_ID,
    TRIBAL_REQUEST,
    DECLARED_PROGRAMS_DETAILED,
    DESIGNATED_DATE,
    ENTRY_DATE,
    UPDATE_DATE,
    CLOSEOUT_DATE
from {{ source('environmental_data', 'FEMA_DISASTER_DECLARATION_AREAS_INDEX') }}
