connection: "looker-dcl-dev"

# include all the views
include: "*.view"


explore: dimgroup3 {

  join: dimgroup4 {
    sql_on: ${dimgroup3.id}=${dimgroup4.id};;
    relationship: one_to_one
  }
}

#explore: baby_namesmolly {}
