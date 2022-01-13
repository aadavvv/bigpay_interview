resource "aws_vpc" "prod-vpc" {
  cidr_block                       = var.cidr
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink

  tags = {
      Name = "prod-vpc"
      Terraform = "true"
    }
}

output "prod_vpc_id"{
  value = aws_vpc.prod-vpc.id
}