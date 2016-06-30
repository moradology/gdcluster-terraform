variable "key_name" {}

variable "key_path" {}

variable "region"     {
  default = "us-east-1"
}

variable "spot_price" {
  default = "0.4"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default = "10.128.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
  default = "10.128.1.0/24"
}

variable "amis" {
  default = {
    us-east-1 = "ami-a4827dc9"
  }
}
