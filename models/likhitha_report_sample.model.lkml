connection: "bv185086_report"

# include all the views
include: "/views/**/*.view"

datagroup: likhitha_report_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: likhitha_report_sample_default_datagroup


explore: mark_list {

}
