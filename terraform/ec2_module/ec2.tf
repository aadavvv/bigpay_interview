resource "aws_instance" "Jenkins_Master_Instance" {
    ami                = var.ami_id
    instance_type      = var.instance_type
    key_name           = "${aws_key_pair.aadav-pub-key.id}"
    security_groups    = [var.security_group_vpc]
    subnet_id          = var.prod-subnet-public-1
    user_data          = file("ec2_module/install.sh")

    tags = {
        Name = "Jenkins_Master_Instance"
        Terraform = "true"
    }

    provisioner "local-exec" {
        command = "sleep 100"
    }

    provisioner "file" {
        source      = "dependency/docker-compose.yml"
        destination = "docker-compose.yml"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo mkdir -p /data",
            "sudo mount -t efs ${var.efs-data}:/ /data",
            "sudo echo ${var.efs-data}:/ /data efs defaults,_netdev 0 0 >> /etc/fstab",
            "sudo curl http://18.141.194.109/jenkins_data.zip",
            "sudo unzip jenkins_data.zip -d /data/",
            "sudo docker-compose -f ~/docker-compose.yml up -d",
        ]
    }

    connection {
        type        = "ssh"
        user        = "ec2-user"
        password    = ""
        private_key = file(var.keyPath)
        host        = self.public_ip
    }
}

resource "aws_instance" "Jenkins_Agent_Instance" {
    ami                = var.ami_id
    instance_type      = var.instance_type
    key_name           = "${aws_key_pair.aadav-pub-key.id}"
    security_groups    = [var.security_group_vpc]
    subnet_id          = var.prod-subnet-public-1
    user_data          = file("ec2_module/install.sh")

    tags = {
        Name = "Jenkins_Agent_Instance"
        Terraform = "true"
    }
}

resource "aws_instance" "Deployment_Instance" {
    ami                = var.ami_id
    instance_type      = var.instance_type
    key_name           = "${aws_key_pair.aadav-pub-key.id}"
    security_groups    = [var.security_group_vpc]
    subnet_id          = var.prod-subnet-public-1
    user_data          = file("ec2_module/install.sh")

    tags = {
        Name = "Deployment_Instance"
        Terraform = "true"
    }
}