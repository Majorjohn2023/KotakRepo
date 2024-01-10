-- models/cybersyn/cybersyn_data_catalog.sql

{{ config(materialized='view') }}

select
    TABLE_NAME,
    TABLE_NAME_PROPER,
    TABLE_TYPE,
    LISTING_URL,
    LISTING_NAME,
    DATA_SOURCE,
    DESCRIPTION,
    ENTITIES,
    SELECT_RELATED_TABLES,
    DATA_SOURCE_URL,
    LICENSE_URL,
    CREATED_DATE,
    LAST_UPDATED_TIMESTAMP
from {{ source('environmental_data', 'CYBERSYN_DATA_CATALOG') }}
