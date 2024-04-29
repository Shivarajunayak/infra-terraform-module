module "lambda_function_existing_package_s3" {
  source = "./terraform-aws-lambda"

  function_name = var.function_name
  description   = var.description
  handler       = var.handler
  runtime       = var.runtime

  create_package      = var.create_package
  s3_existing_package = var.s3_existing_package
  tags                = var.tags
}

