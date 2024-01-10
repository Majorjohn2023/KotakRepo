-- models/carbon/carbon_credit_purchase_attributes.sql

{{ config(materialized='view') }}

select
    VARIABLE,
    VARIABLE_NAME,
    GROUPING_TYPE,
    ENTITY,
    MEASURE_TYPE
from {{ source('environmental_data', 'CARBON_CREDIT_PURCHASE_ATTRIBUTES') }}