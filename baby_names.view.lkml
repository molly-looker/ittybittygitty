view: baby_namesmolly {
  sql_table_name: `wildcard_practice.baby_names_201*` ;;

  dimension: child_s_first_name {
    type: string
    sql: LOWER(${TABLE}.Child_s_First_Name) ;;
  }

  measure: count {
    type: max
    sql: ${TABLE}.Count ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: year_of_birth {
    type: number
    value_format_name: id
    sql: ${TABLE}.Year_of_Birth ;;
  }

}
