# route_table_association/variables.tf
variable "subnet_id" {
  description = "The ID of the subnet"
}

variable "route_table_id" {
  description = "The ID of the route table"
}