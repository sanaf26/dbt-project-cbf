
    
    

with dbt_test__target as (

  select product_id as unique_field
  from `data-cbf-485811`.`raw_olist_source`.`products`
  where product_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


