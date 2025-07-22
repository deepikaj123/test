{{ config(materialized='ephemeral') }}

    select *
    from {{source('source_db_schema','raw_customerdata')}}