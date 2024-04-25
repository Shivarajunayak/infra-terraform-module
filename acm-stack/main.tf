module "acm" {
  source = "./terraform-aws-acm"

  domain_name = "my-domain.com"
  zone_id     = "Z2ES7B9AZ6SHAE"

  validation_method = "DNS"

  subject_alternative_names = [
    "*.my-domain.com",
    "app.sub.my-domain.com",
  ]

  wait_for_validation = true

  tags = {
    Name = "my-domain.com"
  }
}

