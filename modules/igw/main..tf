# internet_gateway/main.tf
resource "aws_internet_gateway" "myigw" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.gateway_name
  }
}


