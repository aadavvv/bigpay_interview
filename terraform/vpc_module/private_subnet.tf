resource "aws_subnet" "prod-subnet-private-1" {
    vpc_id                  = aws_vpc.prod-vpc.id
    cidr_block              = var.private_cidr
    map_public_ip_on_launch = var.private_map_public_ip_on_launch
    availability_zone       = var.private_subnet_availability_zone
    tags = {
        Name = "prod-subnet-private-1"
        Terraform = "true"
    }
}

output "prod-subnet-private-1" {
    value = aws_subnet.prod-subnet-private-1.id
}