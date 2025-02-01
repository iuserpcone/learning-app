# vpc/variables.tf
variable "cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  default     = true
}

variable "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  default     = true
}

variable "vpc_name" {
  description = "The name of the VPC"
}