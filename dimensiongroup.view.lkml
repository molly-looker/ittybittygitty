view: dimgroup3 {
  sql_table_name: nested_practice_data.teachers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }

  dimension: schedule {
    sql: ${TABLE}.schedule ;;
  }

  dimension_group: class_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  measure: count {
    type: count
  }
}

view: teachers_schedule {
  dimension: class_name {
    type: string
    sql: ${TABLE}.class_name ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }
}
