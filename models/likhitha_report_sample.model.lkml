connection: "bv185086_report"

# include all the views
include: "/views/**/*.view"

datagroup: likhitha_report_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: likhitha_report_sample_default_datagroup

access_grant: can_view_explore {
  user_attribute:visible
  allowed_values:["yes"]
}
explore: mark_list {
  required_access_grants:[can_view_explore]
}
