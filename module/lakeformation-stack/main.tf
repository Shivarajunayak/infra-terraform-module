module "lake_formation" {
  source = "./terraform-aws-lakeformation"

  database_name = "my_database"
  table_name = "my_table"
  description = "My table description"
  columns = [
    {
      name = "column1"
      type = "string"
    },
    {
      name = "column2"
      type = "int"
    }
  ]

  permissions = [
    {
      principal = "arn:aws:iam::123456789012:role/DataLakeAdminRole"
      permission = "ALL"
    },
    {
      principal = "arn:aws:iam::123456789012:role/DataLakeReadWriteRole"
      permission = "SELECT"
    }
  ]
}
