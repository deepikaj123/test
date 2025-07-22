{{ config(materialized='table') }}

WITH tb1 as(
    select id as ORDER_ID,
    order_date,
    user_id as CUST_ID

    from {{source('source_db_schema','raw_orders')}})
select * from tb1
