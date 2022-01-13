resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id                  = aws_vpc.prod-vpc.id
    cidr_block              = var.public_cidr
    map_public_ip_on_launch = var.public_map_public_ip_on_launch
    availability_zone       = var.public_subnet_availability_zone
    tags = {
        Name = "prod-subnet-public-1"
        Terraform = "true"
    }
}

output "prod-subnet-public-1" {
    value = aws_subnet.prod-subnet-public-1.id
}