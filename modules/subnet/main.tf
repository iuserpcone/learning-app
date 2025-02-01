# subnet/main.tf
resource "aws_subnet" "mysubnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone = var.subnet_az
  tags = {
    Name = var.subnet_name
  }
}

