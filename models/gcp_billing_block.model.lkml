connection: "bigquery-all-customers"
label: "Google Cloud Billing"

include: "/views/*.view.lkml"
include: "/dashboards/*"
include: "/explores/*.explore.lkml"

datagroup:billing_datagroup {
  sql_trigger: select max(export_time) from @{BILLING_TABLE};;
  max_cache_age: "24 hours"
  description: "Triggers a rebuild when new data is exported"
}

datagroup:pricing_datagroup {
  sql_trigger: select max(export_time) from @{PRICING_TABLE};;
  max_cache_age: "24 hours"
  description: "Triggers a rebuild when new data is exported"
}
