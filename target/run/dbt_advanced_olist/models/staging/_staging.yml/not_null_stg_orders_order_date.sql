
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `data-cbf-485811`.`raw_olist_dbt_test__audit`.`not_null_stg_orders_order_date`
    
      
    ) dbt_internal_test