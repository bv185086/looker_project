view: mark_list {
  #required_access_grants: [can_view_explore]
  sql_table_name: `Likhitha_demo.Mark_list`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: marks {
    type: number
    sql: ${TABLE}.Marks ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
