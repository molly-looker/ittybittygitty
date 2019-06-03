connection: "redshift"

# include all the views
include: "*.view"

datagroup: ittybittygitty_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ittybittygitty_default_datagroup

explore: ra {}

#this is a committed change
#testing a commit
#testing another commit
