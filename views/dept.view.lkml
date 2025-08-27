view: dept {
  sql_table_name: demo_db.dept ;;
  drill_fields: [dept_id]

  dimension: dept_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DeptID ;;
  }
  dimension: js_deptname {
    type: string
    sql: ${TABLE}.js_deptname ;;
  }
  measure: count {
    type: count
    drill_fields: [dept_id, js_deptname, salary.count]
  }
}
