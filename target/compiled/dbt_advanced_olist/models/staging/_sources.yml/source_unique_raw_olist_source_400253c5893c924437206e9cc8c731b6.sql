
    
    

with dbt_test__target as (

  select string_field_0 as unique_field
  from `data-cbf-485811`.`raw_olist_source`.`product_category_name_translation`
  where string_field_0 is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


