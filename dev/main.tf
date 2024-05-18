
provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source = "/Users/Siddu/Documents/D_O_C_S/SourceCode/pinnatum/terraform_modules/aws-vpc"

  cidr = "10.0.0.0/18"
  resource_name = "Siddu-dev"
  subnet_cidr_blocks = ["10.0.0.0/20", "10.0.16.0/20"]
}

output vpc {
    value = module.vpc.vpc_id
}