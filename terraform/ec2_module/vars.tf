variable "ami_id" {
  description = "Enter the amazon machine image"
  type        = string
  default     = "ami-0dc5785603ad4ff54"
}

variable "instance_type" {
  description = "Enter the Instance type"
  type        = string
  default     = "t2.micro"
}

variable "aadav_public_key" {
  description = "Enter the Instance type"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDO/8pgCpi88pxCY3l2UUgUMgnwxxberU3t47BaUvSSb89It8vW2g12Z5l9IE9av4Ufy/wCx4wX9kXVL2SbFW8Iv2XN+utx2vzZoRbIZkK1tuYNM1E6UGHCs6ADMsdH2g6kukp9G/4AyMexrueDofWYmnAwxfz5N817/JoZF4GpDixcofAcV6cv9RjY3SpLCu9IYxI1Wg4NqST8oCVpZKiSNvutLs9k+8/xwi4RBLBJ4zlaE8fGP+THHPUx2Xt1l2RZALMcNoyZOE9lHaglLakhXQoDoHhJBrHrQ2/uCKY//mgPbIVh/RJdj60Dr9vzwfkX1OXMkHP31pH9EhpJNBPaT8ViBZz8f+7FXxbeX0xpA0fEE7K6VB0MFPUoDkcUfHEM7y9BXdkm/vhXX7vXo4zXW0MWnkN4lg3jHno+DiJpe3H5R+LiduhORccVoKADwXp5eWyobq7y4MOYwhUlVMNnhFjVJdCxDrPMcfrwnwWAC975ooyS8kQtkNZFINVW0xs= aadav@Aadavs-MBP"
}

variable "keyPath" {
  description = "Private Key File Path"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "vpc_id" {}
variable "prod-subnet-public-1" {}
variable "prod-subnet-private-1" {}
variable "security_group_vpc" {}
variable "efs-data" {}