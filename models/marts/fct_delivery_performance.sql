{{ config(
    materialized='table',
    partition_by={
        "field": "order_date",
        "data_type": "date"
    },
    cluster_by=["customer_region", "is_late_delivery"]
) }}

/*
FACT TABLE: fct_delivery_performance
Grain: One row per order (order_id)

Why this configuration:
- Materialized as a table because this is a reporting mart queried frequently.
- Partitioned by order_date to optimise time-based filtering.
- Clustered by customer_region and is_late_delivery to optimise operational queries.
*/

with orders as (

    select
        order_id,
        customer_id,
        order_date,
        customer_region,
        order_size_bucket,
        delivery_days,
        is_late_delivery,
        days_late,
        order_status
    from {{ ref('int_orders_enriched') }}

)

select

    -- Grain
    order_id,

    -- Foreign key
    customer_id,

    -- Dimensions
    order_date,
    customer_region,
    order_size_bucket,

    -- Delivery metrics
    delivery_days,
    is_late_delivery,
    days_late,

    -- Boolean flag (cleaner than 1/0)
    is_late_delivery as late_delivery_flag,

    -- Business-friendly classification
    case
        when is_late_delivery then 'Late'
        when not is_late_delivery 
             and order_status = 'delivered' then 'On Time'
        else 'Other'
    end as delivery_category

from orders