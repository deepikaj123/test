{{
    config(materialized='table')
}}

with tb1 as 
 (
    select 
    id,
    first_name,
    last_name
    from {{source('source_db_schema','raw_customerdata')}}
 )
select * from tb1

