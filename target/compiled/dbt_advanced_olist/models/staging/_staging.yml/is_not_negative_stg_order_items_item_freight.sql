

select
    item_freight as failing_value,
    count(*) as row_count
from `data-cbf-485811`.`raw_olist_staging`.`stg_order_items`
where item_freight < 0
group by 1

