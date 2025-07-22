{{ config(materialized='table') }}

    select *
    from {{source('source_db_schema','raw_customerdata')}}
