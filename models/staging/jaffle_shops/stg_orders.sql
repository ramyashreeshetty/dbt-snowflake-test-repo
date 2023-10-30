with orders as (
select
    id as order_id,
    userid as customer_id,
    order_date,
    status
from {{ source('dbt_raw', 'orders') }}
)
select * from orders