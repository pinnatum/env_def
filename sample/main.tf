resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/27"
  instance_tenancy = "default"

  tags = {
    Name = "sample"
  }
}