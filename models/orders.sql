with orders as (
    select * from {{ ref('stg_orders') }}
),
payments as (
    select * from {{ ref('stg_payments') }}
),
final as (
    select
        orders.order_id,
        orders.customer_id,
        amount,
        payments.status as status
    from orders
    left join payments using (order_id)
)
select * from final