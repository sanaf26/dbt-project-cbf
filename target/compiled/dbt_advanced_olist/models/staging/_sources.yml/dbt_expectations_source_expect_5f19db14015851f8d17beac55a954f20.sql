






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and freight_value >= 0 and freight_value <= 1000
)
 as expression


    from `data-cbf-485811`.`raw_olist_source`.`order_items`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







