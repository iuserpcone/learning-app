# ec2_instance/variables.tf
variable "ami" {
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
}

variable "key_name" {
  description = "The key pair name for the EC2 instance"
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet for the EC2 instance"
}

variable "associate_public_ip_address" {
  description = "Whether or not to associate a public IP address with the EC2 instance"
}

variable "instance_count" {
  description = "The number of EC2 instances to create"
}

variable "instance_name" {
  description = "The base name for the EC2 instances"
}