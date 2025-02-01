# elastic_ip/main.tf
resource "aws_eip" "example" {
  vpc = true
  tags = {
    Name = var.eip_name
  }
}


