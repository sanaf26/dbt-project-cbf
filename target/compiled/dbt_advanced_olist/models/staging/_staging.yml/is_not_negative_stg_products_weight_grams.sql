

select
    weight_grams as failing_value,
    count(*) as row_count
from `data-cbf-485811`.`raw_olist_staging`.`stg_products`
where weight_grams < 0
group by 1

