terraform {
  backend "s3" {
    bucket = "pinnatum-terraform-tfstate-s3"
    key = "env_def/dev/terraform.tfstate"
    region = "eu-west-2"
    encrypt = false
  }
}