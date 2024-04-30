module "lambda_function_existing_package_s3" {
  source = "./terraform-aws-lambda-master"
  function_name = "my-lambda1"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"
  
create_package      = false
  s3_existing_package = {
    bucket = "testlambda0921"
    key    = "my-function.zip"
  }
 
tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
