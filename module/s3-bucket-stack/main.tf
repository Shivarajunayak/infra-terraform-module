module "s3_bucket" {
  source = "./aws-s3"

  bucket = var.bucket
  acl    = var.acl

  control_object_ownership = var.control_object_ownership
  object_ownership         = var.object_ownership

  versioning = var.versioning

}
