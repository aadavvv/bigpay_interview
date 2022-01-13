resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.prod-vpc.id
    tags = {
        Name = "prod-igw"
        Terraform = "true"
    }
}