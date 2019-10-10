
 view: teachers_ {
   derived_table: {
   sql: SELECT teachers_room_num, teachers.id
        FROM nested_practice_data.teachers
        LEFT JOIN UNNEST(teachers.room_num) as teachers_room_num ;;
        }


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

        dimension: room_num {
          type: number
          sql:  teachers_room_num ;;
        }
}
