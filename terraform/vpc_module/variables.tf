variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_cidr" {
  description = "The Public Subnet CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_cidr" {
  description = "The Public Subnet CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.2.0/24"
}

variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  description = "Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = false
}

variable "public_map_public_ip_on_launch" {
  description = "it makes this a public subnet"
  type        = bool
  default     = true
}

variable "private_map_public_ip_on_launch" {
  description = "it makes this a public subnet"
  type        = bool
  default     = false
}

variable "public_subnet_availability_zone" {
  description = "Mention the public subnet availability zone"
  type        = string
  default     = "ap-southeast-1a"
}

variable "private_subnet_availability_zone" {
  description = "Mention the private subnet availability zone"
  type        = string
  default     = "ap-southeast-1b"
}