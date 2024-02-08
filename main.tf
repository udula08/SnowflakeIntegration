terraform{
        required_providers {
                snowflake = {
                        source = "Snowflake-Labs/snowflake"
                        version = "~> 0.76"
                }
        }
}

provider "snowflake" {
        account = var.snowflake_account
        user = var.snowflake_username
        password = var.snowflake_password
        role = var.snowflake_role
}

resource "snowflake_warehouse" "warehouse_one" {
  name           = var.warehouse_name
  warehouse_size = var.warehouse_size
}

resource "snowflake_role" "role_one" {
  name                  = var.role_name
}

resource "snowflake_database" "database_one" {
  name = var.database_name
}

resource "snowflake_schema" "schema_one" {
  database = var.database_name
  name     = var.schema_name
}

resource "snowflake_table" "table_one" {
  name   = var.table_name
  database = var.database_name
  schema = var.schema_name

  column {
    name = "userid"
    type = "NUMBER"
  }

  column {
    name = "username"
    type = "VARCHAR"
  }

  column {
    name = "firstname"
    type = "VARCHAR"
  }

  column {
    name = "lastname"
    type = "VARCHAR"
  }

  column {
    name = "address"
    type = "VARCHAR"
  }
}