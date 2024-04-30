module "glue_job" {
  source = "./terraform-aws-glue"
  # Cloud Posse recommends pinning every module to a specific version
  # version = "x.x.x"

  job_description   = "Glue Job that runs data_cleaning.py Python script"
  role_arn          = local.role_arn
  glue_version      = var.glue_version
  worker_type       = "Standard"
  number_of_workers = 2
  max_retries       = 2

  # The job timeout in minutes
  timeout = 20

  command = {
    # The name of the job command. Defaults to `glueetl`.
    # Use `pythonshell` for Python Shell Job Type, or `gluestreaming` for Streaming Job Type.
    name            = "glueetl"
    script_location = format("s3://%s/data_cleaning.py", local.s3_bucket_source)
    python_version  = 3
  }

  context = module.this.context
}
