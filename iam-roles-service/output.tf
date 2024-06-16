

output "ec2-service-role-arn" {
    value = module.ec2-role.sid
}

output "lambda-service-role-arn" {
    value = module.lambda-role.sid
}