connection: "looker-dcl-dev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: students {

  join: students_class {
    sql: LEFT JOIN UNNEST(${students.class}) as students_class ;;
    relationship: one_to_many
  }
  join: teachers {
    type:  left_outer
    sql_on: ${students_class.teacher_id}=${teachers.id} ;;
    relationship:  many_to_one
  }
  join: teachers_schedule {
    sql: LEFT JOIN UNNEST(${teachers.schedule}) as teachers_schedule ;;
    relationship: one_to_many
  }

  join: teachers_ {
    sql_on: ${teachers.id}=${teachers_.id};;
    relationship: one_to_many
  }
}

explore: dimgroup3 {

  join: dimgroup4 {
    sql_on: ${dimgroup3.id}=${dimgroup4.id};;
    relationship: one_to_one
  }
}

#explore: baby_namesmolly {}
