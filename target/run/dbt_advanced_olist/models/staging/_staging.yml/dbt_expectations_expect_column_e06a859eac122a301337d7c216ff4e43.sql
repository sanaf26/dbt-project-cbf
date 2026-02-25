
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `data-cbf-485811`.`raw_olist_dbt_test__audit`.`dbt_expectations_expect_column_e06a859eac122a301337d7c216ff4e43`
    
      
    ) dbt_internal_test