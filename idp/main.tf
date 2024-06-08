
module "s3_bucket" {
  source = "/Users/Siddu/Documents/D_O_C_S/SourceCode/pinnatum/terraform_modules/s3-bucket"

  bucket_name         = "${local.resource_name}-sftp-s3"
  s3_object_ownership = "BucketOwnerEnforced"
  versioning_enabled  = false
}

module "sftp" {
  source         = "/Users/Siddu/Documents/D_O_C_S/SourceCode/pinnatum/terraform_modules/transfer-sftp"
  resource_name  = local.resource_name
  sftp_users     = local.sftp_users
  s3_bucket_name = module.s3_bucket.bucket_id
  
}


output "transfer_endpoint" {
  value = module.sftp.transfer_endpoint
}
