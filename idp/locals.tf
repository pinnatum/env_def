locals {
  resource_name = "${var.resource_prefix_name}-${var.environment}"

  sftp_users = {
    "test" = {
      user_name      = "test",
      s3_bucket_name = module.s3_bucket.bucket_id
      public_key     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDc5J+rzb2+nSTuika6GG8oSI57wUGMva/1En1AKqazTyXnQfUKytiMZaucDdLU8uq9Sh7Yllpv43/VuYBIgN2TfxaR/kkTK+i08vyeVR+fLgn8C8dcFZSU6mAF9t4YEUd5DgEt0kdEsJStftcjIOC1adATHTZQIjCkC7vFEVo1ra4Kfm0i6q1nhFOMGCQlMh+31hmVnZOL9H4QUR6Y91w6CxP17g9RY/3Ws2xIIvCimkH+c8BeFqRy2j2dGDVO682KATWWTt7BomPbag6k6LcxcSEPyNXfYNkymeCUtl5T71VLK7j2CR3YB0ZZos0DS1u12yPKtswwYvsorku/f5azD+ih4fadKsHpszcOGUtjU0NTuObXdlX5eImXZk5ClBQ4ouafNtC+KVlmlGxinghiiBhJEfqWtQMm4bCZ4qkROsZWhU/I1rDUTW7Css8sraGrO7DNxfeVoi/0VMmgv2gNbJEmB2ogq+xthsE4A9beDK0IRoA9fTn045A5dDqGJRU= Siddu@MacBook-Pro.local"
    },
  }

  default_tags = {
    "CostCentre"            = ""
    "ApplicationName"       = "aws-${var.environment}"
    "business_unit"         = ""
    "ApplicationID"         = ""
    "ManagedBy"             = "Maven Devops"
    "ProjectCode"           = ""
    "Owner"                 = "Maven Devops"
    "Documentation"         = ""
    "InfrastructureVersion" = "insert the tag or version of the code"
    "BusinessCriticality"   = ""
    "Environment"           = "${var.environment}"
    "DataClassification"    = "Internal"
  }
}