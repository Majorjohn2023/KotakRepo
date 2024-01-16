{{ config(materialized='view') }}
{{ config(
    tags=["daily", "analytics"]
) }}

select 1