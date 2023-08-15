connection: "bigquery-all-customers"

datagroup: google_cloud_platform_-_cost_management_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_cloud_platform_-_cost_management_default_datagroup
