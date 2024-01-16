{{
    config(
        materialized = 'view'
        ,tags = ["daily", "audit_trails"]
    )
}}

select
    VARIABLE,
    VARIABLE_NAME,
    GROUPING_TYPE,
    ENTITY,
    MEASURE_TYPE
from {{ source('environmental_data', 'CARBON_CREDIT_PURCHASE_ATTRIBUTES') }}