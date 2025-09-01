view: testing_export {
  sql_table_name: demo_db.@{connection_eprd2} ;;

  dimension: arr_delay {
    type: number
    sql: ${TABLE}.arr_delay ;;
  }
  dimension_group: arr {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arr_time ;;
  }
  dimension: cancelled {
    type: string
    sql: ${TABLE}.cancelled ;;
  }
  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }
  dimension: dep_delay {
    type: number
    sql: ${TABLE}.dep_delay ;;
  }
  dimension_group: dep {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dep_time ;;
  }
}
