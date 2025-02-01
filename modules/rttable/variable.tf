# route_table/variables.tf
variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "gateway_id" {
  description = "The ID of the internet gateway"
}

variable "route_table_name" {
  description = "The name of the route table"
}