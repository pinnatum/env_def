output vpc {
    value = module.vpc.vpc_id
}

output "subnet_ids" {
    value = module.vpc.subnet_ids
}