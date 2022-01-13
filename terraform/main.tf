module "vpc_module" {
    source                = "./vpc_module"
}

module "efs_module" {
    source                = "./efs_module"
    vpc_id                = module.vpc_module.prod_vpc_id
    prod-subnet-public-1  = module.vpc_module.prod-subnet-public-1
    security_group_vpc    = module.vpc_module.security_group_vpc
}

module "ec2_module" {
    source                = "./ec2_module"
    vpc_id                = module.vpc_module.prod_vpc_id
    prod-subnet-public-1  = module.vpc_module.prod-subnet-public-1
    prod-subnet-private-1 = module.vpc_module.prod-subnet-private-1
    security_group_vpc    = module.vpc_module.security_group_vpc
    efs-data              = module.efs_module.efs-data
}