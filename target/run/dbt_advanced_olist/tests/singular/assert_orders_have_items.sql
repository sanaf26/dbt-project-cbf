
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `data-cbf-485811`.`raw_olist_dbt_test__audit`.`assert_orders_have_items`
    
      
    ) dbt_internal_test