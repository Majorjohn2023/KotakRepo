-- models/carbon/carbon_credit_purchase_timeseries.sql

{{ config(materialized='view') }}

select
    VARIABLE,
    VARIABLE_NAME,
    VALUE,
    UNIT,
    DATE
from {{ source('environmental_data', 'CARBON_CREDIT_PURCHASE_TIMESERIES') }}
