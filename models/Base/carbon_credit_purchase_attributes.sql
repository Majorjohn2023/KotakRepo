{{
    config(
        materialized = 'view', 
        tags = ["daily"]
    )
}}


select 1