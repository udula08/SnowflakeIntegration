terraform{
        required_providers {
                snowflake = {
                        source = "Snowflake-Labs/snowflake"
                        version = "~> 0.76" #snowflake version
                }
        }
}

provider "snowflake" {
        account = var.snowflake_account #snowflake account (This can be found in  https://your_account_name.snowflakecomputing.com url)
        user = var.snowflake_username #Username of the snowflake account
        password = var.snowflake_password #Password of the snowflake account
        role = var.snowflake_role #Role of the snowflake account
}

#Creating warehouse in snowflake
resource "snowflake_warehouse" "warehouse_one" {
  name           = var.warehouse_name #Name of the warehouse
  warehouse_size = var.warehouse_size #Size of the warehouse
}

#Creating a role in snowflake
resource "snowflake_role" "role_one" {
  name                  = var.role_name #Name of the role
}

#Creating database in snowflake
resource "snowflake_database" "database_one" {
  name = var.database_name #Name of the database
}

#Creating schema in snowflake
resource "snowflake_schema" "schema_one" {
  database = var.database_name #Name of the database
  name     = var.schema_name #Name of the schema
}

#Creating table in snowflake
resource "snowflake_table" "table_one" {
  name   = var.table_name #Name of the table
  database = var.database_name #Name of the database
  schema = var.schema_name #Name of the schema

#Columns of the table are mentioned below.

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