# subnet/variables.tf
variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
}

variable "subnet_name" {
  description = "The name of the subnet"
}
variable "subnet_az" {
  description = "The name of the availability zone"
  
}

