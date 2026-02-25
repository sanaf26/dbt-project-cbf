
    
    

with all_values as (

    select
        order_status as value_field,
        count(*) as n_records

    from `data-cbf-485811`.`raw_olist_source`.`orders`
    group by order_status

)

select *
from all_values
where value_field not in (
    'delivered','shipped','processing','canceled','invoiced','unavailable','created','approved'
)


