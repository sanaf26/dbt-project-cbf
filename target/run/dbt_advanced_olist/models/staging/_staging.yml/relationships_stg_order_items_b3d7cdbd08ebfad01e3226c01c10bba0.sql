
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `data-cbf-485811`.`raw_olist_dbt_test__audit`.`relationships_stg_order_items_b3d7cdbd08ebfad01e3226c01c10bba0`
    
      
    ) dbt_internal_test