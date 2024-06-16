module "ec2-role" {
  source = "/Users/Siddu/Documents/D_O_C_S/SourceCode/pinnatum/terraform_modules/iam-service-role"
  
  resource_name = "Siddu-ec2-test"
  policy_arns = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]

  tags = {
    service_name = "ec2"
    CostCode = "swde234"
  }
}

module "lambda-role" {
  source = "/Users/Siddu/Documents/D_O_C_S/SourceCode/pinnatum/terraform_modules/iam-service-role"
  
  service_name = "lambda"
  resource_name = "Siddu-lambda-test"
  policy_arns = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", 
                  "arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole",
                  "arn:aws:iam::aws:policy/service-role/ROSAKMSProviderPolicy"]

  tags = {
    service_name = "lambda"
    CostCode = "swde234"
  }
}
