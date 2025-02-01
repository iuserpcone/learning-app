# route_table/main.tf
resource "aws_route_table" "myroutet" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.route_table_name
  }
}


