################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "reseller_billing_detailed_export_v1"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "instance.billing.cloud.pricing.export"
  export: override_optional
}

constant: CONNECTION {
  value: "bq-connection"
  export: override_optional
}
