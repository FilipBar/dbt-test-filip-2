Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_TYPE=snowflake
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_SCHEMA=WORKSPACE_535254391
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_WAREHOUSE=KEBOOLA_PROD_SMALL
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_DATABASE=KEBOOLA_3560
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_ACCOUNT=keboola.eu-central-1
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_USER=KEBOOLA_WORKSPACE_535254391
  export DBT_KBC_TARGET_DBT_TEST_FILIP_2_PASSWORD=89tcpNM5im3rn3EMd3sTHBn4oBTTfTs8

  echo $DBT_KBC_TARGET_DBT_TEST_FILIP_2_TYPE
  echo $DBT_KBC_TARGET_DBT_TEST_FILIP_2_SCHEMA
  echo $DBT_KBC_TARGET_DBT_TEST_FILIP_2_WAREHOUSE


dbt debug -t target_dbt_test_filip_2 --profiles-dir .

dbt run -t target_dbt_test_filip_2 --profiles-dir .

  set DBT_KBC_TARGET_DBT_TEST_FILIP_2_TYPE=snowflake
  set DBT_KBC_TARGET_DBT_TEST_FILIP_2_SCHEMA=WORKSPACE_535254391
  set DBT_KBC_TARGET_DBT_TEST_FILIP_2_WAREHOUSE=KEBOOLA_PROD_SMALL
  set DBT_KBC_TARGET_DBT_TEST_FILIP_2_DATABASE=KEBOOLA_3560

dbt init <nazev projektu>

kbc --version

kbc dbt <nazev projektu>

-- mužu smazat všechny sources kromě kterých používám ( sources )

kbc dbt generate sources ( vrátí znovu všechny sources )


https://help.keboola.com/transformations/dbt/cli/ 



2. dát sources do ignore 
 - variables a sources se vztahují pouze k localu - pro keboolu je nutno vymazat

dbt_profiles - examples !!! smazat
 nahradit složkou a typem materializace (např.: beers: table)


bacha na "_timestamp" 




 version: 2
sources:
    - name: in.c-dbt_jaffle_shop
      freshness:
        warn_after:
            count: 1
            period: day
      database: '{{ env_var("DBT_KBC_TARGET_DBT_TEST_FILIP_2_DATABASE") }}' -- místo téhle veci KEBOOLA_{cislo projektu} -- 3560
      schema: in.c-dbt_jaffle_shop
      loaded_at_field: '"_timestamp"'