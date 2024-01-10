-- models/intermediate/fema_disaster_impact_analysis.sql

{{ config(materialized='view') }}

select
    d.DISASTER_ID,
    d.DISASTER_DECLARATION_NAME,
    d.DISASTER_TYPE,
    d.DISASTER_BEGIN_DATE,
    d.DISASTER_END_DATE,
    count(a.DISASTER_DECLARATION_RECORD_ID) as total_affected_areas
from {{ ref('fema_disaster_declaration_index') }} d
join {{ ref('fema_disaster_declaration_areas_index') }} a on d.DISASTER_ID = a.DISASTER_ID
group by 1, 2, 3, 4, 5
