-- models/carbon/carbon_credit_purchase_timeseries.sql

{{
    config(
        materialized = 'views'
        ,tags = ["daily", "audit_trails"]
    )
}}


select
    VARIABLE,
    VARIABLE_NAME,
    VALUE,
    UNIT,
    DATE
from {{ source('environmental_data', 'CARBON_CREDIT_PURCHASE_TIMESERIES') }}
