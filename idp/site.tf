provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = local.default_tags
  }
}

terraform {
  backend "s3" {}
}