##################################
### on database
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name  = snowflake_share.example.name
  privileges  = ["USAGE"]
  on_database = snowflake_database.example.name
}

## ID: "\"account_name\".\"share_name\"|USAGE|OnDatabase|\"database_name\""

##################################
### on schema
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name = snowflake_share.example.name
  privileges = ["USAGE"]
  on_schema  = "${snowflake_database.example.name}.${snowflake_schema.example.name}"
}

## ID: "\"account_name\".\"share_name\"|USAGE|OnSchema|\"database_name\".\"schema_name\""

##################################
### on table
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name = snowflake_share.example.name
  privileges = ["SELECT"]
  on_table   = "${snowflake_database.example.name}.${snowflake_schema.example.name}.${snowflake_table.example.name}"
}

## ID: "\"account_name\".\"share_name\"|Select|OnTable|\"database_name\".\"schema_name\".\"table_name\""

##################################
### on all tables in schema
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name              = snowflake_share.example.name
  privileges              = ["SELECT"]
  on_all_tables_in_schema = "${snowflake_database.example.name}.${snowflake_schema.example.name}"
}

##################################
### on tag
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name = snowflake_share.example.name
  privileges = ["READ"]
  on_tag     = "${snowflake_database.example.name}.${snowflake_schema.example.name}.${snowflake_tag.example.name}"
}

##################################
### on view
##################################

resource "snowflake_grant_privileges_to_share" "example" {
  share_name = snowflake_share.example.name
  privileges = ["SELECT"]
  on_view    = "${snowflake_database.example.name}.${snowflake_schema.example.name}.${snowflake_view.example.name}"
}
