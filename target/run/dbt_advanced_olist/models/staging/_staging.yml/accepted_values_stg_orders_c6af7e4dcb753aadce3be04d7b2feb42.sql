
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `data-cbf-485811`.`raw_olist_dbt_test__audit`.`accepted_values_stg_orders_c6af7e4dcb753aadce3be04d7b2feb42`
    
      
    ) dbt_internal_test