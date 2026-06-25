terraform {
  backend "s3" {
    bucket            = "dynamo-bucket-26"
    key               = "terraform-project/terraform.tfstate"
    region            = "us-east-1"
    use_lockfile      = true
    encrypt           = true
  }
}