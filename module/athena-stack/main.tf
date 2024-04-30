module "athena_workgroup" {
  source       = "./terraform-aws-athena"

  workgroup_name = "example-workgroup"
  description  = "Example Athena Workgroup"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

