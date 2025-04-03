connection: "twinpines_insurance"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: twinpines_insurance_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: twinpines_insurance_project_default_datagroup

# NOTE: please see https://cloud.google.com/looker/docs/r/sql/bigquery?version=25.2
# NOTE: for BigQuery specific considerations


explore: insurance_claims {}

explore: insurance_customers {}

explore: insurance_policies {}
