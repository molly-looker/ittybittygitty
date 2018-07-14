view: students {
  sql_table_name: nested_practice_data.students ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: class {
    sql: ${TABLE}.class ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  measure: count {
    type: count
  }
}

view: students_class {
  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}.teacher_id ;;
  }

  dimension: gpa {
    type: number
    sql:  case when ${grade}="A" then 4
          when ${grade}="B" then 3
          when ${grade}="C" then 2
          when ${grade}="D" then 1 end;;
  }

  measure: count_class {
    type: count
  }

  measure: sumgpa {
    type: sum
    sql: ${gpa} ;;
  }
}
