resource "aws_efs_file_system" "efs-data" {
    creation_token          = "efs-data"
    performance_mode        = "generalPurpose"
    throughput_mode         = "bursting"
    encrypted               = "true"

    tags = {
        Name = "efs-data"
        Terraform = "true"
    }
 }

resource "aws_efs_mount_target" "efs-mt-data" {
    file_system_id          = "${aws_efs_file_system.efs-data.id}"
    subnet_id               = var.prod-subnet-public-1
    security_groups         = [var.security_group_vpc]
}

output "efs-data"{
  value = aws_efs_file_system.efs-data.id
}